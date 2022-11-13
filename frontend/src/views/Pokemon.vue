<script>
    import PokemonDisplay from '@/components/PokemonDisplay.vue'
    import PartyDisplay from '@/components/PartyDisplay.vue'
    import { apiRequest } from '@/api/request'

    export default {
        components: {
            PokemonDisplay,
            PartyDisplay,
        },
        data() {
            return {
                pokemons: [],
                filteredPokemons: [],
                party: [],
                partyData: [],
                favParty: [],
                searchText: '',
            };
        },
        computed : {
            filteredPokemons() {
                // if (!this.searchText) return this.pokemons;
                // return this.pokemons.filter((pokemon, index) =>
                //     this.pokemonsAsString[index].name.includes(this.searchText)
                // ); 
            },
        },  
        methods: {
            async retrievePokemonList() {
                try {
                    const PokemonList = await apiRequest.get('/pokemon');
                    this.pokemons = PokemonList.data;
                    this.filteredPokemons = PokemonList.data
                    return;
                } catch (error) {
                    console.log(error)
                }
            },
            async retrieveParty() {
                try {
                    const PartyList = await apiRequest.get('/party');
                    this.party = PartyList.data;
                    PartyList.data.forEach(pokemon => {
                        if (pokemon.pid) {
                            const data = {
                                id: pokemon.id,
                                pid: pokemon.pid
                            }
                            this.partyData.push(data);
                        }
                    })
                    return;
                } catch (error) {
                    console.log(error)
                }
            },
            async toggleFavorite(pid) {
                await apiRequest.put(`/pokemon/${pid}`)
                this.retrievePokemonList();
            },
            async removeFromParty(pid) {
                const newPokemonParty = this.partyData.filter(pokemon => pokemon.pid !== pid);
                const newPokemonPartyData = [];
                for (let i=1; i <= newPokemonParty.length; i++) {
                    if (newPokemonParty[i-1].pid) {
                        const data = {
                            id: i,
                            pid: newPokemonParty[i-1].pid
                        }
                        newPokemonPartyData.push(data);
                    }
                }
                await apiRequest.put(`/party`, newPokemonPartyData);

                this.retrieveParty();
            },
            async addToParty(pid) {
                if (this.partyData.length >= 6) {
                    window.alert("The party is full! You must remove pokemon(s) from your party before you can add more")
                    return;
                }

                const data = {
                    id: this.partyData.length + 1,
                    pid: pid
                }
                this.partyData.push(data);

                const res = await apiRequest.put(`/party`, this.partyData);
                console.log(res)

                this.retrieveParty();
            }
        },
        mounted() {
            this.retrievePokemonList()
            this.retrieveParty();
        }
    }

</script>
<template>
    <div class="page-ctn">
        <div id="selection-party-container">
            <div id="selection-container">
                <div id="title">
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                    <h2>Pokemon Selection</h2>
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                </div>
                <div id="sort-container">
                    <div id="type-sort-ctn">
                        <label>Sort by type:</label>
                        <select 
                            name="type-1" 
                            id="type-1"
                            
                        >
                            <option value="" disabled selected>-- Select a primary typing --</option>
                            <option value=""> All</option>
                            <option class="normal" value="Normal">Normal</option>
                            <option class='fire' value="Fire">Fire</option>
                            <option class='water' value="Water">Water</option>
                            <option class='grass' value="Grass">Grass</option>
                            <option class='electric' value="Electric">Electric</option>
                            <option class='ice' value="Ice">Ice</option>
                            <option class='fighting' value="Fighting">Fighting</option>
                            <option class='poison' value="Poison">Poison</option>
                            <option class='ground' value="Ground">Ground</option>
                            <option class='flying' value="Flying">Flying</option>
                            <option class='psychic' value="Psychic">Psychic</option>
                            <option class='bug' value="Bug">Bug</option>
                            <option class='rock' value="Rock">Rock</option>
                            <option class='ghost' value="Ghost">Ghost</option>
                            <option class='dark' value="Dark">Dark</option>
                            <option class='dragon' value="Dragon">Dragon</option>
                            <option class='steel' value="Steel">Steel</option>
                        </select>
                        <select name="type-2" id="type-2">
                            <option value="" disabled selected>-- Select a secondary typing --</option>
                            <option value="">All</option>
                            <option class="normal" value="Normal">Normal</option>
                            <option class='fire' value="Fire">Fire</option>
                            <option class='water' value="Water">Water</option>
                            <option class='grass' value="Grass">Grass</option>
                            <option class='electric' value="Electric">Electric</option>
                            <option class='ice' value="Ice">Ice</option>
                            <option class='fighting' value="Fighting">Fighting</option>
                            <option class='poison' value="Poison">Poison</option>
                            <option class='ground' value="Ground">Ground</option>
                            <option class='flying' value="Flying">Flying</option>
                            <option class='psychic' value="Psychic">Psychic</option>
                            <option class='bug' value="Bug">Bug</option>
                            <option class='rock' value="Rock">Rock</option>
                            <option class='ghost' value="Ghost">Ghost</option>
                            <option class='dark' value="Dark">Dark</option>
                            <option class='dragon' value="Dragon">Dragon</option>
                            <option class='steel' value="Steel">Steel</option>
                            <option value="None" :style="{ 'background-color': 'black', 'color': 'white' }">
                                None
                            </option>
                        </select>
                    </div>
                    <div id="name-search-ctn">
                        <label for="name-search">Search by name:</label>
                        <input id="name-search" type="search">
                    </div>
                </div>
                <hr />
                <PokemonDisplay
                    v-if="pokemons.length > 0"
                    :pokemons="filteredPokemons"
                    :toggleFavorite="toggleFavorite"
                    :addToParty="addToParty"
                />
                <h2 v-else>
                    Failed to retrieve Pokemon list
                </h2>
            </div>
            <div id="party-container">
                <div id="title">
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                    <h2>Your Party</h2>
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                </div>
                <PartyDisplay 
                    v-if="party.length > 0"
                    :party="party"
                    :removeFromParty="removeFromParty"
                />
                <h2 v-else>
                    Failed to retrieve party 
                </h2>
                <div id="party-btn-container">
                    <button id="clear-btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill"
                            viewBox="0 0 16 16">
                            <path
                                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z" />
                        </svg>
                        Clear party
                    </button>
                    <button id="sav-btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 448 512">
                            <path
                                d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V173.3c0-17-6.7-33.3-18.7-45.3L352 50.7C340 38.7 323.7 32 306.7 32H64zm0 96c0-17.7 14.3-32 32-32H288c17.7 0 32 14.3 32 32v64c0 17.7-14.3 
                                32-32 32H96c-17.7 0-32-14.3-32-32V128zM224 416c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z" />
                        </svg>
                        Save as main party
                    </button>
                    <button id="load-btn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512">
                            <path
                                d="M288 109.3V352c0 17.7-14.3 32-32 32s-32-14.3-32-32V109.3l-73.4 73.4c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l128-128c12.5-12.5 32.8-12.5 45.3 0l128 128c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L288 109.3zM64 
                                352H192c0 35.3 28.7 64 64 64s64-28.7 64-64H448c35.3 0 64 28.7 64 64v32c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V416c0-35.3 28.7-64 64-64zM432 456c13.3 0 24-10.7 24-24s-10.7-24-24-24s-24 10.7-24 24s10.7 24 24 24z" />
                        </svg>
                        Load main party
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    @import '@/assets/css/pokemonlist.css'
</style>