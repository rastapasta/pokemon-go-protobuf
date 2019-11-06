# Pokemon Go Protobuf wrapper for Node
[![npm version](https://badge.fury.io/js/pokemongo-protobuf.svg)](https://badge.fury.io/js/pokemongo-protobuf) [![Greenkeeper badge](https://badges.greenkeeper.io/rastapasta/pokemon-go-protobuf.svg)](https://greenkeeper.io/)
![dependencies](https://david-dm.org/rastapasta/pokemon-go-protobuf-node.svg)
![downloads](https://img.shields.io/npm/dm/pokemongo-protobuf.svg)

This package wraps the `node-protobuf` and the [current](https://github.com/AeonLucid/POGOProtos) Pokemon Go protobuf definitions together in one package.

Take a look at the [Pokemon Go MITM project](https://github.com/rastapasta/pokemon-go-mitm-node) to see how it can be used.

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
