load HackComputer.hdl,
output-file Prog3.out,
output-list time%S1.5.1 reset%B2.1.2 ARegister[]%D1.7.1 DRegister[]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1;
//finds sum of first 99 natural numbers and stores it in RAM64[17]
ROM32K load Prog3.hack,

repeat 1400 {
    tick, tock, output;
}