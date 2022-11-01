<script>
  import NavBar from "@/components/NavBar.vue";

  export default {
    components: {
      NavBar,
    }
  }
</script>

<template>
  <NavBar />
  <div class="page">
    <router-view />
  </div>
</template>

<style scoped>
</style>
