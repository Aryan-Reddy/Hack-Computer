load HackComputer.hdl,
output-file Prog2.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[]%D1.7.1 DRegister[]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

// The program computes the modulus of RAM[16]-RAM[17]
// and writes the result in RAM[18].
ROM32K load Prog2.hack,

// first run: compute absolute difference between 3 and 5 (|a-b|)
set RAM64[16] 3,
set RAM64[17] 5,
output;

repeat 8 {
    tick, tock, output;
}

// reset the PC
set reset 1,
tick, tock, output;

// second run: compute absolute difference between 234 and 12 (|a-b|)
set reset 0,
set RAM64[16] 234,
set RAM64[17] 12,
output;

repeat 8 {
    tick, tock, output;
}

// reset the PC
set reset 1,
tick, tock, output;

// second run: compute absolute difference between 30 and 20 (|a-b|)
set reset 0,
set RAM64[16] 30,
set RAM64[17] 20,
output;

repeat 8 {
    tick, tock, output;
}