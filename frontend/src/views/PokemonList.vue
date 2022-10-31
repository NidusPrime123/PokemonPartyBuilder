<template>
    <div class="page-ctn">
        <div id="page-btn-container">
            <button id="profile-btn" onclick="window.location.href='../profile/profile.html'">
                Go to Your Profile
                <i class="fas fa-arrow-right"></i>
            </button>
        </div>
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
                            <option value="">
                                All
                            </option>
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