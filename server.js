let http = require('http');

let users = [
  { id: 11, name: 'zee'},
  {id: 2, name: 'nunew'},
  { id: 3, name: 'zeenunew'}
]
let server = http.createServer((req, res) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  if (req.url === '/api/users') {
    res.end(JSON.stringify(users));
  } else {
    res.end('Not Found');
  }
});

server.listen(3000, () => {
  console.log('3000端口监听成功')
});