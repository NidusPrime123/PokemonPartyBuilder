<script>
    export default {
        props: {
            party: { type: Array, default: () => []},
            removeFromParty: { type: Function },
        },
    }
</script>
<template>
    <div id="party-list">
        <div 
            class="party-pkm"
            v-for="(pokemon) in party"
            :key="pokemon.pid"
        >
            <img :src=pokemon.img :alt=pokemon.name />
            <h3>{{ pokemon.name }}</h3>
            <div class="pkm-typing">
                <button :class=pokemon.type1.toLowerCase()>{{ pokemon.type1 }}</button>
                <button :class=pokemon.type2.toLowerCase()>{{ pokemon.type2 }}</button>
            </div>
            <div class="pkm-add">
                <button
                    @click="removeFromParty(pokemon.pid)" 
                    class="rmv-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 512 512">
                        <path
                            d="M367.2 412.5L99.5 144.8C77.1 176.1 64 214.5 64 256c0 106 86 192 192 192c41.5 0 79.9-13.1 111.2-35.5zm45.3-45.3C434.9 335.9 448 297.5 448 256c0-106-86-192-192-192c-41.5 0-79.9 13.1-111.2 
                            35.5L412.5 367.2zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0S512 114.6 512 256z" />
                    </svg>
                    Remove
                </button>
            </div>
        </div>
    </div>
</template>
<style>
    @import '@/assets/css/pokemonlist.css'
</style>