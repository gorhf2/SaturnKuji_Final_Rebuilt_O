# SaturnKuji Final 10.0

Clean Android project based on the final SaturnKuji specification.

## Main modes
- 랜덤뽑기: pirate/adventure-inspired lottery-ball draw, 1/3/5/10 draws
- 종이뽑기: Korean paper-number board, 1..N generated from total product count
- 상자뽑기: ladder-style chest selection; no multi-draw
- 룰렛뽑기: colorful game roulette
- 저장: winner/product history
- 관리자모드: product/rank/quantity management entry points

## Shared controls
Top-right controls: undo, reset, product settings, product registration, product status, winner history.
Undo removes one latest draw per tap and restores the product, history, and counts.

## Build
GitHub Actions builds the debug APK using Java 17, Android SDK 35, AGP 8.7.3 and Gradle 8.9.
The custom `gradlew` downloads Gradle 8.9 when needed, so a missing wrapper JAR cannot break the first CI run.
