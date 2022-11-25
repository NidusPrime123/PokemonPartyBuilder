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
                favParty: [],
                type1Filter: '',
                type2Filter: '',
                searchText: '',
                toggleSav: false,
                toggleLoad: false,
            };
        },
        watch: {
            type1Filter() {
                if (this.type1Filter && this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type1 === this.type1Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type2 === this.type2Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else {
                    this.filteredPokemons = this.pokemons
                    return;
                }
            },
            type2Filter() {
                if (this.type1Filter && this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type1 === this.type1Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type2 === this.type2Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else {
                    this.filteredPokemons = this.pokemons
                    return;
                }
            },
            searchText() {
                if (this.type1Filter && this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.type2 === this.type2Filter
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type2 === this.type2Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter && this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon => {
                        return pokemon.type1 === this.type1Filter &&
                            pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    })
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type1Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type1 === this.type1Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.type2Filter) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.type2 === this.type2Filter
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else if (this.searchText) {
                    const newPokemons = this.pokemons.filter(pokemon =>
                        pokemon.name.toLowerCase().startsWith(this.searchText.toLowerCase())
                    )
                    this.filteredPokemons = newPokemons
                    return;
                } else {
                    this.filteredPokemons = this.pokemons
                    return;
                }
            }
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
                    if (PartyList.data) {
                        this.party = PartyList.data;
                    } else {
                        this.party = [];
                    }
                    
                } catch (error) {
                    console.log(error)
                }
            },
            async toggleFavorite(pid) {
                await apiRequest.put(`/pokemon/${pid}`)
                this.retrievePokemonList();
            },
            async onToggleSave() {
                if (this.toggleSav) {
                    this.toggleSav = false;
                    return;
                }
                this.toggleSav = true;
                return;
            },
            async onToggleLoad() {
                if (this.toggleLoad) {
                    this.toggleLoad = false;
                    return;
                }
                this.toggleLoad = true;
                return;
            },
            async removeFromParty(id) {
                const partyData = [];
                let i = 1;
                this.party.forEach(pokemon => {
                    if (pokemon.id !== id) {
                        const data = {
                            id: i,
                            pid: pokemon.pid
                        }
                        partyData.push(data);
                        i++;
                    }
                })
                console.log(partyData)
                await apiRequest.put(`/party`, partyData);
                this.retrieveParty();
            },
            async addToParty(pid) {
                if (this.party.length >= 6) {
                    window.alert("The party is full! You must remove pokemon(s) from your party before you can add more")
                    return;
                }
                const partyData = []
                this.party.forEach(pokemon => {
                    if (pokemon.pid) {
                        const data = {
                            id: pokemon.id,
                            pid: pokemon.pid
                        }
                        partyData.push(data);
                    }
                })

                partyData.push({
                    id: this.party.length + 1,
                    pid: pid,
                })

                const res = await apiRequest.put(`/party`, partyData);
                console.log(res)

                this.retrieveParty();
            },
            async clearParty() {
                if (window.confirm("Are you sure you want to delete your current party?") == true) {
                    await apiRequest.delete(`/party`);
                    this.retrieveParty();
                    return;
                } else {
                    console.log("Cancelled!");
                    return;
                }
                
            },
            async saveParty(slotid) {
                if (this.party.length > 6) {
                    window.alert("Invalid party!");
                    return;
                }
                const partyData = [];
                this.party.forEach(pokemon => {
                    if (pokemon.pid) {
                        const data = {
                            pid: pokemon.pid
                        }
                        partyData.push(data);
                    }
                })
                try {
                    await apiRequest.put(`/favparty/${slotid}`, partyData);
                    window.alert(`Your party have been successfully saved to slot #${slotid}`)
                } catch (error) {
                    console.log(error)
                }
                
                
            },
            async loadParty(slotid) {
                const favPartyData = await apiRequest.get(`/favparty/${slotid}`)
                const partyData = [];
                let i = 1;
                favPartyData.data.forEach(pokemon => {
                    if (pokemon.pid) {
                        const data = {
                            id: i,
                            pid: pokemon.pid,
                        }
                        partyData.push(data);
                        i++;
                    }
                })
                await apiRequest.put(`/party/`, partyData);
                this.retrieveParty();
            },
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
                    <img src="../assets/img/attribute.png" alt="" class="attribute_list">
                    <h2>Pokemon Selection</h2>
                    <img src="../assets/img/gif_3.gif" alt="" class="attribute_list">
                </div>
                <div id="sort-container">
                    <div id="type-sort-ctn">
                        <label>Sort by type:</label>
                        <select 
                            name="type-1" 
                            v-model="type1Filter" 
                            :class=type1Filter.toLowerCase()
                        >
                            <option 
                                value="" :style="{ 'background-color': 'white' }" 
                                disabled selected
                            >
                                -- Select a primary typing --
                            </option>
                            <option value="" :style="{ 'background-color': 'white' }">All</option>
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
                        <select 
                            name="type-2" 
                            v-model="type2Filter"   
                            :class=type2Filter.toLowerCase()
                        >
                            <option 
                                value="" :style="{ 'background-color': 'white' }" 
                                disabled selected
                            >
                                -- Select a secondary typing --
                            </option>
                            <option value="None" :style="{ 'background-color': 'white' }">All</option>
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
                        <input v-model="searchText" type="search">
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
                    <img src="../assets/img/gif_2.gif" alt="" class="invert">
                    <h2>Your Party</h2>
                    <img src="../assets/img/moltres_icon.png" alt="">
                </div>
                <PartyDisplay 
                    v-if="party.length > 0"
                    :party="party"
                    :removeFromParty="removeFromParty"
                />
                <h2 v-else>
                    Party is currently empty
                </h2>
                <div id="party-btn-container">
                    <button 
                        id="clear-btn"
                        @click="clearParty()"
                    >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill"
                            viewBox="0 0 16 16">
                            <path
                                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z" />
                        </svg>
                        Clear party
                    </button>
                    <button 
                        id="sav-btn"
                        @click="onToggleSave()"
                    >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 448 512">
                            <path
                                d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V173.3c0-17-6.7-33.3-18.7-45.3L352 50.7C340 38.7 323.7 32 306.7 32H64zm0 96c0-17.7 14.3-32 32-32H288c17.7 0 32 14.3 32 32v64c0 17.7-14.3 
                                32-32 32H96c-17.7 0-32-14.3-32-32V128zM224 416c-35.3 0-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64s-28.7 64-64 64z" />
                        </svg>
                        Save as favorite party
                    </button>
                    <div v-if="toggleSav">
                        <button id="sav-btn-slot" @click="saveParty(1)">Slot 1</button>
                        <button id="sav-btn-slot" @click="saveParty(2)">Slot 2</button>
                    </div>
                    <button 
                        id="load-btn"
                        @click="onToggleLoad()"
                    >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512">
                            <path
                                d="M288 109.3V352c0 17.7-14.3 32-32 32s-32-14.3-32-32V109.3l-73.4 73.4c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l128-128c12.5-12.5 32.8-12.5 45.3 0l128 128c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L288 109.3zM64 
                                352H192c0 35.3 28.7 64 64 64s64-28.7 64-64H448c35.3 0 64 28.7 64 64v32c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V416c0-35.3 28.7-64 64-64zM432 456c13.3 0 24-10.7 24-24s-10.7-24-24-24s-24 10.7-24 24s10.7 24 24 24z" />
                        </svg>
                        Load favorite party
                    </button>
                    <div v-if="toggleLoad">
                        <button id="load-btn-slot" @click="loadParty(1)">Slot 1</button>
                        <button id="load-btn-slot" @click="loadParty(2)">Slot 2</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    @import '@/assets/css/pokemonlist.css'
</style>