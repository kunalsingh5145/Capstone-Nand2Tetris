// Box.asm  --  Roll K = 65
// Box: starts at row 65, 20 rows tall, 16*((65 mod 4)+1) = 32 pixels wide
//      (2 words) from the left edge.
// Start address = SCREEN + 32*65 = 16384 + 2080 = 18464
// While any key is pressed -> black box; key released -> box cleared.

(LOOP)
    @KBD
    D=M
    @BLACK
    D;JNE           // key pressed -> go black
    @color
    M=0             // no key -> white
    @DRAW
    0;JMP
(BLACK)
    @color
    M=-1            // -1 = all 16 bits set = black
(DRAW)
    @18464          // SCREEN + 32*65
    D=A
    @addr
    M=D
    @20             // 20 rows
    D=A
    @count
    M=D
(ROW)
    @color
    D=M
    @addr
    A=M
    M=D             // word 0 (pixels 0-15)
    A=A+1
    M=D             // word 1 (pixels 16-31)
    @addr
    D=M
    @32
    D=D+A           // next row
    @addr
    M=D
    @count
    M=M-1
    D=M
    @ROW
    D;JGT
    @LOOP
    0;JMP
