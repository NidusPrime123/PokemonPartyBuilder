const router = require('express').Router();

router.get("/", async (req, res) => {

    return res.status(200).json({ message: 'Get your favorite party' })
})

router.put("/", async (req, res) => {

    return res.status(200).json({ message: 'Update your favorite party' })
})

module.exports = router;