<script>
    export default {
        props: {
            pokemons: { type: Array, default: () => [] }
        },
    }
</script>
<template>
    <div id="pkm-list">
        <div 
            class="pkm-ctn"
            v-for="(pokemon) in pokemons"
            :key="pokemon.pid"
        >   
            <img :src=pokemon.img :alt=pokemon.name />
            <h3>#{{ pokemon.pid }} - {{ pokemon.name }}</h3>
            <i class="fas fa-heart" id='favorite-mark'></i>
            <div class="pkm-typing">
                <button :class=pokemon.type1.toLowerCase()>{{ pokemon.type1 }}</button>
                <button :class=pokemon.type2.toLowerCase()>{{ pokemon.type2 }}</button>
            </div>
            <div class="pkm-add">
                <button class="pt-btn" id="${pokemon.dexEntry}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-plus-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                        <path
                            d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                    </svg>
                    <i class="fas fa-plus"></i>Party
                </button>
                <button class="fav-btn" id="${pokemon.dexEntry}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart"
                        viewBox="0 0 16 16">
                        <path
                            d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                    </svg>
                    Favorite
                </button>
            </div>
        </div>
    </div>
</template>
<style>
    @import '@/assets/css/pokemonlist.css'
</style>