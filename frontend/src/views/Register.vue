<template>
    <div id="page-ctn">
        <router-link to="/" class="home-btn-ctn">
            <button>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill"
                    viewBox="0 0 16 16">
                    <path
                        d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
                </svg>
                Go back to home page
            </button>
        </router-link>
        <div id="form-container">
            <div id="title">
                <img src="../assets/pokeball-transparent-png-2.png" alt="">
                <h2>Welcome to PokeTeamBuilder!</h2>
                <img src="../assets/pokeball-transparent-png-2.png" alt="">
            </div>
            <form action="">
                <div class="field">
                    <label for="username">Username:<p>*</p></label>
                    <input type="text" name="username" />
                </div>
                <div class="field">
                    <label for="email">Email:<p>*</p></label>
                    <input type="email" name="email" />
                </div>
                <div class="field">
                    <label for="password">Password:<p>*</p></label>
                    <input type="password" name="password" />
                </div>
                <div class="field">
                    <label for="password">Confirm password:<p>*</p></label>
                    <input type="password" name="cPassword" />
                </div>
                <button id="login-btn" type="submit">
                    <span>Join now!</span>
                </button>
            </form>
            <span>Already have an account? Login
                <router-link to="/login">
                    here
                </router-link>
            </span>
        </div>
    </div>
</template>
<style scoped>
    @import '@/assets/css/register.css'
</style>