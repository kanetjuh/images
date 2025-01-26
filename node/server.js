// server.js
const dotenv = require('dotenv');
dotenv.config();
const EXAMPLE = process.env.EXAMPLE;
console.log(`Hello World!\nRetreived Variable (EXAMPLE) : ${EXAMPLE}`);
