const router = require('express').Router();
const knex = require("../database/knex");

router.get("/", async (req, res) => {
    try {
        const pokemons = await knex('pokemon').select('*');
        console.log(pokemons);
        return res.status(200).json({ pokemons });
    } catch (error) {
        res.status(500).json(error)
    } 
})

router.put("/:pid", async (req, res) => {
    try {
        const status = await knex('pokemon')
            .where('pid', req.params.pid)
            .select('favorite')
        

        console.log(status)
        return res.status(200).json({ status })
    } catch (error) {
        res.status(500).json(error)
    } 
})

module.exports = router;