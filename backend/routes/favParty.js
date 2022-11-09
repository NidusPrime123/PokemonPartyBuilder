const router = require('express').Router();
const knex = require("../database/knex");

//get all favorite party
router.get("/", async (req, res) => {
    try {
        const party = await knex('favparty')
            .join('pokemon', 'pokemon.pid', 'favparty.pid')
            .orderBy("favparty.id", "asc");

        return res.status(200).json( party );
    } catch (error) {
        res.status(500).json(error)
    } 
})

//get favorite party by slot
router.get("/:slotid", async (req, res) => {
    try {
        const party = await knex('favparty')
            .join('pokemon', 'pokemon.pid', 'favparty.pid')
            .where("favparty.slotid", req.params.slotid)
            .orderBy("favparty.id", "asc");

        return res.status(200).json( party );
    } catch (error) {
        res.status(500).json(error)
    } 
})

//update favorite party by slot
router.put("/:slotid", async (req, res) => {
    try {
        await knex('favparty')
            .where("slotid", req.params.slotid)
            .del();

        for (let i = 0; i < req.body.length; i++) {
            if (req.body[i].pid) {
                await knex('favparty').insert([
                    { slotid: req.params.slotid, pid: req.body[i].pid },
                ])
            }
        } 

        const updatedParty = await knex('favparty')
            .join('pokemon', 'pokemon.pid', 'favparty.pid')
            .where("favparty.slotid", req.params.slotid)
            .orderBy("favparty.id", "asc");

        return res.status(200).json( updatedParty );
    } catch (error) {
        res.status(500).json(error)
    } 
})

module.exports = router;