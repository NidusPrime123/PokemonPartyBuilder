const router = require('express').Router();
const knex = require("../database/knex");

//get all Pokemon
router.get("/", async (req, res) => {
    try {
        const pokemons = await knex('pokemon').select('*');

        return res.status(200).json( pokemons );
    } catch (error) {
        res.status(500).json(error)
    } 
})

//get 1 Pokemon by id 
router.get("/:pid", async (req, res) => {
    try {
        const pokemons = await knex('pokemon')
            .where('pid', req.params.pid)
            .select('*');

        return res.status(200).json( pokemons );
    } catch (error) {
        res.status(500).json(error)
    } 
})

//toggle favorite
router.put("/:pid", async (req, res) => {
    try {
        const fav = await knex('pokemon')
            .where('pid', req.params.pid)
            .andWhere('favorite', '<', 1)
            .update('favorite', 1);

        if (fav) {
            return res.status(200).json( fav )
        } else {
            const unFav = await knex('pokemon')
                .where('pid', req.params.pid)
                .andWhere('favorite', '>', 0)
                .update('favorite', 0)

            return res.status(200).json( unFav )
        }
        
    } catch (error) {
        res.status(500).json(error)
    } 
})

module.exports = router;