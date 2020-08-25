#!/usr/bin/env bash
export GRAALVM_BIN=/Users/arnout/.sdkman/candidates/java/20.1.0.r11-grl/bin
set -ex

$GRAALVM_BIN/node --jvm --polyglot server.js
