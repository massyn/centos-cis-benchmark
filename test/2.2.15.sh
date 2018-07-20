#!/bin/sh

# 2.2.15 Ensure mail transfer agent is configured for local-only mode (Scored)

out=$(netstat -an | grep LIST | grep ":25[[:space:]]")
[[ -z "${out}" ]] || exit 1
