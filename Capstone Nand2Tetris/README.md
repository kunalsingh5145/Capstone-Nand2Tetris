# Capstone - Nand to Tetris I (ETCCNT301)
Roll no: ______  |  **K = 65**

| Item | Value |
|---|---|
| K mod 3 = 2 | Extra assembler feature: warning for a duplicate label |
| K mod 4 = 1 | Width = 16 x 2 = 32 pixels (2 words) |
| Box | Starts at row 65, 20 rows tall, 32 px wide, left edge |
| Start address | SCREEN + 32*65 = 16384 + 2080 = **18464** |
| Last row | row 84 -> first word 16384 + 32*84 = 19072 (words 19072-19073) |

## Files
- `hdl/CPU.hdl`, `hdl/Memory.hdl`, `hdl/Computer.hdl` (Part A)
- `assembler.py` (Part B)  -  run: `python assembler.py Box.asm`
- `Box.asm`, `Box.hack` (Part C; Box.hack made by assembler.py)
- `tests/` - Add, Max, and a Bad.asm that shows the duplicate-label warning

## Steps left for you (need the Nand2Tetris tools)
1. Copy `hdl/*.hdl` next to your other chips (project 5 folder); run CPU.tst, Memory.tst, ComputerAdd/Max/Rect.tst; screenshot each.
2. Assemble Rect.asm and Pong.asm with `assembler.py` and compare with the official assembler, e.g. `diff Rect.hack OfficialRect.hack`.
3. CPU Emulator -> load `Box.hack` -> run -> hold a key -> screenshot.
