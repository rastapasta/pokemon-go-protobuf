var fs = require('fs');
var protobuf = require('protobuf');

module.exports = new protobuf(fs.readFileSync('compiled.desc'));
