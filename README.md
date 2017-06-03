# Pokemon Go POGOProtos wrapper for Node
[![npm version](https://badge.fury.io/js/pogoprotos.svg)](https://badge.fury.io/js/pogoprotos)
![dependencies](https://david-dm.org/furtif/pokemon-go-protobuf-node.svg)
![downloads](https://img.shields.io/npm/dm/pogoprotos.svg)

This package wraps the `pogoprotos` and the [current](https://github.com/AeonLucid/POGOProtos) Pokemon Go pogoprotos definitions together in one package.

Take a look at the [Pokemon Go MITM project](https://github.com/rastapasta/pokemon-go-mitm-node) to see how it can be used.

## Installation

```
npm i --save pogoprotos
```

## Usage

```
var proto = require('pogoprotos');
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
