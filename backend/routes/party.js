const router = require('express').Router();
const knex = require("../database/knex");

//get current party
router.get("/", async (req, res) => {
    try {
        const party = await knex('party')
            .join('pokemon', 'pokemon.pid', 'party.pid')
            .orderBy("party.id", "asc");
            // .select('pokemon.pid', 'pokemon.name', 'pokemon.img')
            // .where('pokemon.pid', '=', 'party.pid');

        return res.status(200).json( party );
    } catch (error) {
        res.status(500).json(error)
    } 
})

//update current party
router.put("/", async (req, res) => {
    try {
        await knex('party').del();

        for (let i = 0; i < req.body.length; i++) {
            if (req.body[i].pid) {
                await knex('party').insert([
                    { id: req.body[i].id, pid: req.body[i].pid },
                ])
            }
        } 

        const updatedParty = await knex('party')
            .join('pokemon', 'pokemon.pid', 'party.pid')
            .orderBy("party.id", "asc");

        return res.status(200).json( updatedParty );
    } catch (error) {
        res.status(500).json(error)
    } 
})

module.exports = router;