#!/usr/bin/env bash
set -euo pipefail

# Basic package update and cleanup for UBI images.
if command -v microdnf >/dev/null 2>&1; then
  microdnf -y update
  microdnf -y clean all
elif command -v dnf >/dev/null 2>&1; then
  dnf -y update
  dnf -y clean all
elif command -v yum >/dev/null 2>&1; then
  yum -y update
  yum -y clean all
fi

rm -rf /var/cache/dnf /var/cache/yum /var/tmp/*
