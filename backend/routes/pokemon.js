const router = require('express').Router();

router.get("/", async (req, res) => {

    return res.status(200).json({ message: 'Get all Pokemon' })
})

module.exports = router;