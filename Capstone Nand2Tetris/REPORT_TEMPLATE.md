# Capstone Report - Make the Computer Draw a Box
**Name:** ________  **Roll no:** ________  **K = 65**
**Box:** starts row 65, 20 rows tall, 32 pixels wide (2 words), from left edge. Start address 18464.

## 1. Part A - Computer
CPU, Memory, Computer built from my chips. Screenshots: CPU.tst, Memory.tst, ComputerAdd, ComputerMax, ComputerRect. (Mention any built-in chip used.)

## 2. Part B - Assembler (K mod 3 = 2)
Pass 1 strips comments/blank lines and stores labels; pass 2 translates to 16 bits, giving new variables addresses from 16. Extra feature: warning when a label is defined twice. Tested on Add, Max, Rect, Pong - output matches the official assembler (screenshot of diff).

## 3. Part C - Box.asm
Loop: read KBD; set color = -1 (key) or 0 (no key); then 20 times write color to 2 words and move addr by 32. Screenshot of box.

## 4. One mistake I fixed
(Write one paragraph. Example: my first version added 1 instead of 32 to the address, so the box became a thin slanted line; I fixed it after remembering one screen row is 32 words.)
