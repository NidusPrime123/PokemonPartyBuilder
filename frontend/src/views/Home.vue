<script>
    
</script>
<template>
    <div id="page-ctn">
        <div id="content-ctn">
            <div id="title">
                <h1>Hello there, Trainer!</h1>
                <img src="@/assets/pokedex.png" alt="">
            </div>
            <div id="content">
                <p>
                    Welcome to <b>Pokemon Party Builder</b>! As the name suggest, this website will assist you with building your Pokemon Dream Team.
                    One of the most fun aspect of a Pokemon game is building your own party of Pokemons, so we can bond, adventure and battle with them.
                </p>
                <h2>What are you waiting for? Build your own Pokemon party right now!</h2>
                <router-link to="/party" class="nav-item" style="text-decoration: none; color: inherit;">
                    <button>
                        Build your party
                        <img src="@/assets/pokeball-transparent-png-2.png" alt="">
                    </button>
                </router-link>
            </div>
        </div>
    </div>
</template>
<style scoped>
    @import '@/assets/css/home.css'
</style>