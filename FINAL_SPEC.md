# SaturnKuji Final — implementation contract

This project is the clean rebuild target for the final SaturnKuji app.

Main navigation:
1. 랜덤뽑기
2. 종이뽑기
3. 상자뽑기
4. 룰렛뽑기
5. 저장
6. 관리자모드

Shared draw-screen controls:
- 취소: undo the most recent winning item per tap; undo removes the corresponding saved item/history and restores inventory counts.
- 리셋: reallocate unpicked products.
- 상품등록: set total product count and grade counts; numbering is generated from 001..N.
- 상품설정: manage product/grade configuration under administrator permissions.
- 상품현황: popup showing total / drawn / remaining and per-grade totals/drawn/remaining.
- 당첨자현황: popup showing winner, product, date and exact time.

Draw modes:
- 랜덤뽑기: pirate-adventure original visual style, lottery-ball cylinder, 1/3/5/10 draws.
- 종이뽑기: Korean paper-lottery board, 001..N, peel/reveal action, grade-specific effects.
- 상자뽑기: ladder game, one selection only, original fantasy characters, pirate treasure chest opening.
- 룰렛뽑기: separate colorful roulette game; names/segments determine proportional segment size; character-style moving roulette action; winner name and fireworks.

Data:
- One shared product inventory across draw modes.
- Products store number, name, image, grade, description, total/drawn/remaining state.
- Winning history stores product, grade, winner, date, time, draw mode.
- Data persists after restart.
