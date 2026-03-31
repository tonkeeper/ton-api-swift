#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

generate_swift_package() {
  local input_path="$1"
  local output_path="$2"
  local project_name="$3"

  openapi-generator generate -i "$input_path" -g swift5 -o "$output_path" \
  --additional-properties=\
projectName="$project_name",\
swiftUseApiNamespace=false,\
enumUnknownDefaultCase=true,\
responseAs=AsyncAwait,\
useSPMFileStructure=true,\
validatable=false
}

postprocess_generated_swift_sources() {
  python3 - "$REPO_ROOT" <<'PY'
import re
import sys
from pathlib import Path

repo_root = Path(sys.argv[1])
source_dirs = [
    repo_root / "Packages" / "ton-streaming-api-v2" / "Sources" / "TonStreamingAPIV2",
]

for sources_dir in source_dirs:
    for path in sources_dir.rglob("*.swift"):
        original = path.read_text()
        updated = original

        updated = re.sub(r"\bextension String: CodingKey \{", "extension String: @retroactive CodingKey {", updated)
        updated = re.sub(
            r"\bpublic class OpenISO8601DateFormatter: DateFormatter \{",
            "public class OpenISO8601DateFormatter: DateFormatter, @unchecked Sendable {",
            updated,
        )
        updated = re.sub(
            r"\bopen class URLSessionRequestBuilder<T>: RequestBuilder<T> \{",
            "open class URLSessionRequestBuilder<T>: RequestBuilder<T>, @unchecked Sendable {",
            updated,
        )
        updated = re.sub(
            r"\bopen class URLSessionDecodableRequestBuilder<T: Decodable>: URLSessionRequestBuilder<T> \{",
            "open class URLSessionDecodableRequestBuilder<T: Decodable>: URLSessionRequestBuilder<T>, @unchecked Sendable {",
            updated,
        )

        if "TonStreamingAPIV2" in str(path):
            updated = re.sub(r"\bopen class StreamingAPI \{", "open class StreamingOperationsAPI {", updated)
            updated = re.sub(r"\[String: Dictionary\]", "[String: [String: AnyCodable]]", updated)
            updated = re.sub(r"\[Dictionary\](\??)", r"[[String: AnyCodable]]\1", updated)

        if updated != original:
            path.write_text(updated)

        if (
            "TonStreamingAPIV2" in str(path)
            and path.parent.name == "APIs"
            and path.name == "StreamingAPI.swift"
        ):
            renamed_path = path.with_name("StreamingOperationsAPI.swift")
            if renamed_path.exists():
                renamed_path.unlink()
            path.rename(renamed_path)
PY
}

generate_swift_package \
  "$REPO_ROOT/openapi_generation/tonapi.yml" \
  "$REPO_ROOT/Packages/ton-api" \
  "TonAPI"

generate_swift_package \
  "$REPO_ROOT/openapi_generation/toncenter-streamer-v2-sse.openapi.yaml" \
  "$REPO_ROOT/Packages/ton-streaming-api-v2" \
  "TonStreamingAPIV2"

postprocess_generated_swift_sources
