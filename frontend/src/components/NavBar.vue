<template>
    <div class="nav-bar">
        <div class="left">
            <img src="../assets/pokeball-transparent-png-2.png" alt="">
            <h1>Pokemon Party Builder</h1>
        </div>
        <div class="right">
            <router-link 
                to="/" class="nav-item" 
                style="text-decoration: none; color: inherit;"
            >
                <h2>Home</h2>
            </router-link>
            <router-link 
                to="/party" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <h2>Party</h2>
            </router-link>
            <router-link 
                to="/login" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <h2>Login</h2>
            </router-link>
            <router-link 
                to="/register" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <h2>Register</h2>
            </router-link>
        </div>
    </div>
</template>
<style scoped>
.nav-bar {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        height: 75px;
        background-color: darkblue;
    }
    .left {
        flex: 1;
        display: flex;
        justify-content: flex-start;
    }
    .left h1 {
        color: white;
        font-weight: 600;
        margin-left: 20px;
    }
    .left img {
        height: 70px;
        width: 70px;
    }

    .right {
        flex: 1;
        display: flex;
        justify-content: flex-end;
    }

    .nav-item {
        flex: 1;
        border-left: 2px solid black;
        text-align: center;
    }

    .nav-item h2 {
        color: white;
        text-decoration: none;
    }
</style>