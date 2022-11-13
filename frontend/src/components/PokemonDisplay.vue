<script>

    export default {
        props: {
            pokemons: { type: Array, default: () => [] },
            toggleFavorite: { type: Function },
            addToParty: { type: Function },
        },
        methods: {
            
        }
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
            <svg 
                v-if="pokemon.favorite > 0"
                xmlns="http://www.w3.org/2000/svg" 
                viewBox="0 0 512 512"
                width="24" height="24" color="pink"
            >
                <path fill="pink"
                    d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 
                    84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z" />
            </svg>
            <div class="pkm-typing">
                <button :class=pokemon.type1.toLowerCase()>{{ pokemon.type1 }}</button>
                <button :class=pokemon.type2.toLowerCase()>{{ pokemon.type2 }}</button>
            </div>
            <div class="pkm-add">
                <button 
                    class="pt-btn" 
                    @click="addToParty(pokemon.pid)"
                >
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-plus-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                        <path
                            d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                    </svg>
                    <i class="fas fa-plus"></i>Party
                </button>
                <button 
                    class="fav-btn"
                    @click="toggleFavorite(pokemon.pid)"
                >
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