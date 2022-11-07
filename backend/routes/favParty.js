const router = require('express').Router();
const knex = require("../database/knex");

router.get("/", (req, res) => {

    return res.status(200).json({message: "Get all favorite Pokemon"})
})

module.exports = router;