import { createWebHistory, createRouter } from 'vue-router'
import PokemonList from '@/views/PokemonList.vue';
import NotFound from '@/views/NotFound.vue'
import Login from '@/views/Login.vue'
import Register from '@/views/Register.vue'

const routes = [
    {
        path: '/',
        name: 'pokemonlist',
        component: PokemonList
    },
    {
        path: '/login',
        name: 'login',
        component: Login
    },
    {
        path: '/register',
        name: 'register',
        component: Register
    },
    {
        path: '/:pathMatch(.*)*',
        name: 'notfound',
        component: NotFound
    },
];

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes,
})

export default router;