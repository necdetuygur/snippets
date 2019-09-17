wget https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
tar -xf node-v10.16.0-linux-x64.tar.xz
sudo cp -r node-v10.16.0-linux-x64/{bin,include,lib,share} /usr/
rm -rf node-v10.16.0-linux-x64.tar.xz
rm -rf node-v10.16.0-linux-x64

echo "const http = require('http');" >> app.js
echo "const os = require('os');" >> app.js
echo "var str = os.hostname() + '\n';" >> app.js
echo "str += JSON.stringify(os.networkInterfaces(), 2, 2);" >> app.js
echo "const hostname = '0.0.0.0';" >> app.js
echo "const port = 3000;" >> app.js
echo "const server = http.createServer((req, res) => {" >> app.js
echo "  res.statusCode = 200;" >> app.js
echo "  res.setHeader('Content-Type', 'text/plain');" >> app.js
echo "  res.end(str + '\n');" >> app.js
echo "});" >> app.js
echo "server.listen(port, hostname, () => {" >> app.js
echo "  console.log('Server running at http://' + hostname + ':' + port + '/');" >> app.js
echo "});" >> app.js

node app.js
