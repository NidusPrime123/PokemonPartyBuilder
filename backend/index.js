const express = require('express');
const app = express();
const cors = require('cors');

require('dotenv').config();

const pokemonRoute = require('./routes/pokemon');
const partyRoute = require('./routes/party');
const favPartyRoute = require('./routes/favParty');

app.use(express.json());
app.use(cors());

app.use('/api/pokemon', pokemonRoute);
app.use('/api/party', partyRoute);
app.use('/api/favParty', favPartyRoute);

app.get('/', (req, res) => {
    res.status(200).send('Hello world!');
})

app.listen(process.env.PORT, () => {
    console.log(`App is running on port ${process.env.PORT}`);
})