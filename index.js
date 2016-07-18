var fs = require('fs');
var protobuf = require('node-protobuf');

module.exports = new protobuf(fs.readFileSync('compiled.desc'));
