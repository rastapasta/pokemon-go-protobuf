#!/bin/sh

perl compile.pl
protoc --include_imports -o compiled.desc compiled.proto
