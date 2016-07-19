# Pokemon Go Protobuf for Node

## Installation

```
npm i --save git+https://github.com/rastapasta/node-pokemongo-protobuf.git
```

## Usage

```
var proto = require('pokemongo-protobuf');
console.log(proto.info());

// get a buffer somewhere
var data = proto.parse(buffer, "POGOProtos.Networking.Envelopes.ResponseEnvelope");

// Do stuff with data
```
