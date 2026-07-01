# Protobuf Conformance Tests

A repository which runs the protocol buffers [conformance test suite](https://github.com/protocolbuffers/protobuf/tree/main/conformance) against various implementations.

## Differences from upstream

- All implementations are run against the same test surface.
- TypeScript support is acknowledged as JavaScript support.

## Implementations

The current implementations being tested are:

<!-- LIST-START -->

* protobuf.js `v8.6.5`: https://github.com/protobufjs/protobuf.js
* Protobuf-ES `v2.12.0`: https://github.com/bufbuild/protobuf-es
* protobuf-ts `v2.11.1`: https://github.com/timostamm/protobuf-ts
* google-protobuf `v4.0.2`: https://github.com/protocolbuffers/protobuf-javascript
* ts-proto `v2.11.8`: https://github.com/stephenh/ts-proto
* protoscript `v0.0.18`: https://github.com/TateThurston/protoscript
* protoc-gen-ts `v0.8.7`: https://github.com/thesayyn/protoc-gen-ts

<!-- LIST-END -->

## Results

<!-- TABLE-START -->

| Implementation | Supports<br>TypeScript | Supports<br>protoc | Advertised Edition | Required tests | Recommended tests |
|---|:---:|:---:|:---:|:---:|:---:|
| [protobuf.js](impl/protobuf.js) | :heavy_check_mark: | :heavy_check_mark: | 2024 | <sub><img src=".github/genimg/protobuf.js-required.svg" height="25" width="125" /></sub><br><sup>(5086/5086)<sub> | <sub><img src=".github/genimg/protobuf.js-recommended.svg" height="25" width="125" /></sub><br><sup>(1364/1364)<sub> |
| [Protobuf-ES](impl/protobuf-es) | :heavy_check_mark: | :heavy_check_mark: | 2024 | <sub><img src=".github/genimg/Protobuf-ES-required.svg" height="25" width="125" /></sub><br><sup>(4267/5086)<sub> | <sub><img src=".github/genimg/Protobuf-ES-recommended.svg" height="25" width="125" /></sub><br><sup>(1288/1364)<sub> |
| [protobuf-ts](impl/protobuf-ts) | :heavy_check_mark: | :heavy_check_mark: | proto3 | <sub><img src=".github/genimg/protobuf-ts-required.svg" height="25" width="125" /></sub><br><sup>(2120/5086)<sub> | <sub><img src=".github/genimg/protobuf-ts-recommended.svg" height="25" width="125" /></sub><br><sup>(644/1364)<sub> |
| [google-protobuf](impl/google-protobuf) | :warning:<sup>1</sup> | :heavy_check_mark: | 2023 | <sub><img src=".github/genimg/google-protobuf-required.svg" height="25" width="125" /></sub><br><sup>(1896/5086)<sub> | <sub><img src=".github/genimg/google-protobuf-recommended.svg" height="25" width="125" /></sub><br><sup>(861/1364)<sub> |
| [ts-proto](impl/ts-proto) | :heavy_check_mark: | :heavy_check_mark: | proto3 | <sub><img src=".github/genimg/ts-proto-required.svg" height="25" width="125" /></sub><br><sup>(1377/5086)<sub> | <sub><img src=".github/genimg/ts-proto-recommended.svg" height="25" width="125" /></sub><br><sup>(38/1364)<sub> |
| [protoscript](impl/protoscript) | :heavy_check_mark: | :heavy_check_mark: | proto3 | <sub><img src=".github/genimg/protoscript-required.svg" height="25" width="125" /></sub><br><sup>(977/5086)<sub> | <sub><img src=".github/genimg/protoscript-recommended.svg" height="25" width="125" /></sub><br><sup>(110/1364)<sub> |
| [protoc-gen-ts](impl/protoc-gen-ts) | :heavy_check_mark: | :heavy_check_mark: | proto3 | <sub><img src=".github/genimg/protoc-gen-ts-required.svg" height="25" width="125" /></sub><br><sup>(438/5086)<sub> | <sub><img src=".github/genimg/protoc-gen-ts-recommended.svg" height="25" width="125" /></sub><br><sup>(176/1364)<sub> |

<sup>1</sup> Runtime typings are available via Definitely Typed. Declarations for generated code require a third-party declaration generator.

<!-- TABLE-END -->

## FAQ

**How does this differ from upstream?**

This fork runs all implementations against the same test surface and includes implementation versions in the report.

**What is tested here?**

The full conformance test surface: Binary Protobuf, ProtoJSON, and Text Format, with `--maximum_edition 2024` and `--enforce_recommended`.

**So what is the best JavaScript or TypeScript Protobuf library in 2026?**

It depends on your requirements. For up-to-date information about each library, compare capabilities and verify claims against primary sources.

**Will this repository receive updates?**

Possibly, depending on upstream.

## Running the tests

To run the conformance tests, run `npm test` from the repo root.

Note that only Linux and OSX operating systems are supported.
