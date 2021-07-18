load HackComputer.hdl,
output-file Prog1.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[]%D1.7.1 DRegister[]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1 RAM64[19]%D1.7.1;

// The program computes the arithmetic of RAM[16],RAM[17],RAM[18] 
// and writes the result in RAM[19].
ROM32K load Prog1.hack,

// first run: compute 3 + 5 - 2 (a+b-c)
set RAM64[16] 3,
set RAM64[17] 5,
set RAM64[18] 2,
output;

repeat 8 {
    tick, tock, output;
}

// reset the PC
set reset 1,
tick, tock, output;

// second run: compute 234 + 12 - 100 (a+b-c)
set reset 0,
set RAM64[16] 234,
set RAM64[17] 12,
set RAM64[18] 100,
output;

repeat 8 {
    tick, tock, output;
}

// reset the PC
set reset 1,
tick, tock, output;

// second run: compute 30 + 20 - 10 (a+b-c)
set reset 0,
set RAM64[16] 30,
set RAM64[17] 20,
set RAM64[18] 10,
output;

repeat 8 {
    tick, tock, output;
}