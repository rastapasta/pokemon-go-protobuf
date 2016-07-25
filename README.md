# Pokemon Go Protobuf wrapper for Node
[![npm version](https://badge.fury.io/js/pokemongo-protobuf.svg)](https://badge.fury.io/js/pokemongo-protobuf)
![dependencies](https://david-dm.org/rastapasta/pokemon-go-protobuf-node.svg)

This package wraps the `node-protobuf` and the [current](https://github.com/AeonLucid/POGOProtos) Pokemon Go protobuf definitions together in one package.

## Installation

```
npm i --save pokemongo-protobuf
```

## Usage

```
var proto = require('pokemongo-protobuf');
console.log(proto.info());

// get a buffer somewhere
var data = proto.parse(buffer, "POGOProtos.Networking.Envelopes.ResponseEnvelope");

// Do stuff with data
```

## Recompile the proto definitions

By now, the [POGOProtos](https://github.com/AeonLucid/POGOProtos) include a compile script.
Pull the newest revision and compile it with `python compile_single.py -d` to generate a new
`out/POGOProtos.desc`.

And: This README deserves more love :)
