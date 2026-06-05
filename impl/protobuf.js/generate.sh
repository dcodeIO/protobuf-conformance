#!/usr/bin/env bash
set -euo pipefail

node_modules/.bin/pbjs -t json-module -w esm --dts -o gen/protos_pb.js \
  ../../proto/conformance/conformance.proto \
  ../../proto/google/protobuf/test_messages_proto2.proto \
  ../../proto/google/protobuf/test_messages_proto3.proto \
  ../../proto/google/protobuf/test_messages_edition2023.proto \
  ../../proto/google/protobuf/test_messages_proto2_editions.proto \
  ../../proto/google/protobuf/test_messages_proto3_editions.proto
