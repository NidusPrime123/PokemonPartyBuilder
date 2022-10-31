<template>
    <div class="page">
        <h1>
            Oh no, the page you are trying to access does not exist...
        </h1>
        <router-link to="/">
            <p>>Return to home page</p>
        </router-link>
    </div>
</template>
<style scoped>
    .page {
        background-color: white; 
        padding-left: 10px ;
    }

    .page p {
        font-size: 24px;
    }
</style>