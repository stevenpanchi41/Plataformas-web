const mongoose = require('mongoose');

const URI = 'mongodb+srv://stevenpanchi41_db_user:drUvwopYyUGKe9kZ@cluster0.6bxiglw.mongodb.net/gastos?retryWrites=true&w=majority&appName=Cluster0';

mongoose.connect(URI)
.then(() => console.log('BD conectada a MongoDB Atlas'))
.catch(err => console.error(err));

module.exports = mongoose;