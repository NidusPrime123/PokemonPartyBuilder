const router = require('express').Router();

router.get("/", async (req, res) => {

    return res.status(200).json({ message: 'Get your party' })
})

router.post("/", async (req, res) => {

    return res.status(200).json({ message: 'Add a Pokemon to your party' })
})

router.delete("/", async (req, res) => {

    return res.status(200).json({ message: 'Remove a Pokemon to your party' })
})

module.exports = router;