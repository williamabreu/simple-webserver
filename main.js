#!/usr/bin/env node

const express = require('express');
const http    = require('http');

const app     = express();
const server  = http.Server(app);

app.use(express.static('public'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/public/index.html');
});

server.listen(80);
