<template>
    <div id="page-ctn">
        <div id="form-container">
            <div id="title">
                <img src="../assets/gif_1.gif" alt="" class="invert">
                <h2>Welcome!</h2>
                <img src="../assets/gif_1.gif" alt="">
            </div>
            <form action="">
                <div class="field">
                    <label for="username">Username:</label>
                    <input type="text" name="username" />
                </div>
                <div class="field">
                    <label for="password">Password:</label>
                    <input type="password" name="password" />
                </div>
                <button id="login-btn" type="submit">
                    <span>Log in!</span>
                </button>
            </form>
            <span>Don't have an account? Register
                <router-link to="/register">
                    here
                </router-link>
            </span>
        </div>
    </div>
</template>
<style scoped>
    @import '@/assets/css/login.css'
</style>