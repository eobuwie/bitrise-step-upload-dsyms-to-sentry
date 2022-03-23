#!/bin/bash
set -x

if which sentry-cli >/dev/null; then
  export SENTRY_URL=$sentry_url

  sentry-cli --auth-token $auth_token upload-dif --org $organisation_slug --project $project_slug $dsym_path
else
  echo "warning: sentry-cli not installed, download from https://github.com/getsentry/sentry-cli/releases"
fi
