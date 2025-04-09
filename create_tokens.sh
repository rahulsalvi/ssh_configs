#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: no argument supplied"
  echo "Usage: $0 <hostname>"
  exit 1
fi

HOSTNAME="$1"
echo "Creating tokens for ${HOSTNAME}"
step-cli ca token --ssh --cert-not-after=168h --host --principal "${HOSTNAME}" --principal "${HOSTNAME}.local" --principal "${HOSTNAME}.ipn.rahulsalvi.com" "${HOSTNAME}" >/tmp/step_rsa_token
step-cli ca token --ssh --cert-not-after=168h --host --principal "${HOSTNAME}" --principal "${HOSTNAME}.local" --principal "${HOSTNAME}.ipn.rahulsalvi.com" "${HOSTNAME}" >/tmp/step_ed25519_token
