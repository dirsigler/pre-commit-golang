#!/usr/bin/env bash

set -euo pipefail

if ! command -v govulncheck &> /dev/null; then
    echo "govulncheck not installed or available in the PATH" >&2
    echo "please check https://go.dev/security/vuln/cmd/govulncheck/" >&2
    exit 1
fi

exec govulncheck ./...
