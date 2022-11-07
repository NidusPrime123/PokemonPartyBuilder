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
                        <select name="type-1" id="type-1">
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
                <div id="pkm-list">
                    <div class="pkm-ctn">
                        <img src="https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png" alt="Charizard" />
                        <h3>Charizard</h3>
                        <i class="fas fa-heart" id='favorite-mark'></i>
                        <div class="pkm-typing">
                            <button class='fire'>Fire</button>
                            <button class='flying'>Flying</button>
                        </div>
                        <div class="pkm-add">
                            <button class="pt-btn" id="${pokemon.dexEntry}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle"
                                    viewBox="0 0 16 16">
                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                </svg>
                                <i class="fas fa-plus"></i>Party
                            </button>
                            <button class="fav-btn" id="${pokemon.dexEntry}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart"
                                    viewBox="0 0 16 16">
                                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg>
                                Favorite
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div id="party-container">
                <div id="title">
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                    <h2>Your Party</h2>
                    <img src="../assets/pokeball-transparent-png-2.png" alt="">
                </div>
                <div id="party-list">
                </div>
                <div id="party-btn-container">
                    <button id="clear-btn">
                        <i class="fas fa-trash-alt"></i>Clear party
                    </button>
                    <button id="sav-btn">
                        <i class="fas fa-save"></i>Save as main party
                    </button>
                    <button id="load-btn">
                        <i class="fas fa-upload"></i>Load main party
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    @import '@/assets/css/pokemonlist.css'
</style>