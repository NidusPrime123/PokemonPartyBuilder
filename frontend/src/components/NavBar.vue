<template>
    <div class="nav-bar">
        <div class="left">
            <img src="../assets/img/pokeball-transparent-png-2.png" alt="">

            
            <h1>Pokémon Party Builder</h1>
        </div>
        <div class="right">
            <router-link 
                to="/" class="nav-item" 
                style="text-decoration: none; color: inherit;"
            >
                <img src="../assets/img/house_icon.png" alt="" class="home">
                <h2>Home</h2>
            </router-link>
            <router-link 
                to="/party" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <img src="../assets/img/party_icon.png" alt="" class="zoom">
                <h2>Party</h2>
            </router-link>
            <!-- <router-link 
                to="/login" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <img src="../assets/login_icon.png" alt="" class="flipping_icon">
                <h2>Login</h2>
            </router-link>
            <router-link 
                to="/register" class="nav-item"
                style="text-decoration: none; color: inherit;"
            >
                <img src="../assets/register_icon.png" alt="">
                <h2>Register</h2>
            </router-link> -->
        </div>
    </div>
</template>
<style scoped>
.nav-bar {
        position: relative;
        top: 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        height: 75px;
        background-color: darkblue;
    }
    .left {
        flex: .7;
 
        display: flex;
        justify-content: flex-start;
        margin-left: 10px;
    }
    .left h1 {
        color: white;
        font-weight: 600;
        margin-left: 20px;
        font-family: Arial, Helvetica, sans-serif;
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

    .right img {
        height: 40px;
        width: 40px;
    }


    .right h2 {
        color: white;
        
        font-weight: 600;
        margin-left: 20px;
        
    }

    .nav-item {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        flex: 1;
        border-left: 2px solid black;
        /* text-align: center; */
    }

    .nav-item h2 {
        color: white;
        text-decoration: none;
        font-family: Arial, Helvetica;
        font-weight: normal;
    }

    /* router-link {
        display: flex;
        flex-direction: row;
    } */


    .flipping_icon:hover {
				animation: flipping_icon .75s 4;
			}		
    @keyframes flipping_icon {
    0% {
        transform: perspective(400px) scaleY(1);
        }
    50% {
        transform: perspective(400px) scaleY(-1);
        }
    }
   
    .zoom:hover {
        transform: scale(1.5);
    }


    .home:hover {
        animation: home 2s 2;			
    }
    @keyframes home {
        100%{ 
            transform: rotate(360deg)
            }
    }

</style>