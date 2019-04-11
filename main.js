const express = require('express');
const app = express();
const http = require('http').Server(app);
app.use(express.static('public'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/public/index.html');
});

http.listen(80);
