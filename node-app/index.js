http = require('http');

console.log("hello!");

server = http.createServer(function (req, res) {
  console.log("Here");
  res.end("I'm listening");
})


server.listen(3000)