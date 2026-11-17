#!/bin/sh
# Starts HomeTwin from the add-on's options. Home Assistant is reached through the
# Supervisor's proxy with the token the Supervisor hands every add-on, so nothing to set up.
set -eu

opt() { jq -r --arg k "$1" '.[$k] // empty' /data/options.json; }

export HA_URL="http://supervisor/core"
export HA_TOKEN="${SUPERVISOR_TOKEN:-}"

v="$(opt password)"; [ -n "$v" ] && export HOMETWIN_PASSWORD="$v"
v="$(opt llm_base_url)"; [ -n "$v" ] && export LLM_BASE_URL="$v"
v="$(opt llm_api_key)"; [ -n "$v" ] && export LLM_API_KEY="$v"
v="$(opt llm_model)"; [ -n "$v" ] && export LLM_MODEL="$v"

set -- -http 0.0.0.0:6417 -data /data/hometwin
[ "$(opt vr_import)" = "true" ] && set -- "$@" -vr-import

exec /usr/local/bin/hometwin "$@"
