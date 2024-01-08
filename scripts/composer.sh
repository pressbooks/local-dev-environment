#!/usr/bin/env bash
if [ "$PACKAGIST_USER" ]; then
  echo "Setting packagist credentials"
  composer config --global --auth http-basic.repo.packagist.com "${PACKAGIST_USER}" "${PACKAGIST_TOKEN}"
  composer config --global --auth http-basic.rhubarbgroup.repo.packagist.com "${PACKAGIST_CACHE_PRO_USER}" "${PACKAGIST_CACHE_PRO_TOKEN}"
  composer config --global github-oauth.github.com "${GITHUB_TOKEN}"
else
  echo "You should configure your credentials on config_services/.env"
fi
