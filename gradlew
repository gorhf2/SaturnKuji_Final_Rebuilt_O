#!/bin/sh
set -eu
GRADLE_VERSION=8.9
BASE="${GRADLE_USER_HOME:-$HOME/.gradle}/wrapper/dists/gradle-$GRADLE_VERSION-bin"
DIST="$BASE/gradle-$GRADLE_VERSION/bin/gradle"
if [ ! -x "$DIST" ]; then
  mkdir -p "$BASE"
  ZIP="$BASE/gradle.zip"
  if command -v curl >/dev/null 2>&1; then curl -fsSL -o "$ZIP" "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip"; else wget -q -O "$ZIP" "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip"; fi
  unzip -q -o "$ZIP" -d "$BASE"
fi
exec "$DIST" "$@"
