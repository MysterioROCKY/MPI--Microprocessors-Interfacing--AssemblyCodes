# MPI(Microprocessors and Interfacing) Repository - NASM | MASM
 - **NASM (Netwide Assembler) and MASM (Microsoft Macro Assembler) are assembly language assemblers used for writing low-level code that directly corresponds to machine 
   instructions.**

## Overview
This repository contains a collection of assignments (Assig1 to Assig6) for the MPI course. Each assignment folder contains various problems with their solutions implemented in Assembly language. 

## Folder Structure
Here is the detailed folder structure of the repository:

### Assig1
- `Q1&Q2/`
  - `MPI_Assig1.pdf`
- `Q3/`
  - `Q3.1.c`
  - `Q3.2.c`
- `readme_Q3.1&Q3.2.md`

### Assig2
- `Prob1/`
  - `max_ele.asm`
  - `max_ele.c`
- `Prob2/`
  - `min_ele.asm`
  - `min_ele.c`
- `Prob3/`
  - `mode.asm`
  - `mode.c`
- `Prob4/`
  - `median.asm`
  - `median.c`
- `Prob5/`
  - `lSearch.asm`
  - `search.c`
- `readme_P1toP5.md`

### Assig3
- `Prob1/`
  - `Even.asm`
  - `Even.c`
  - `output1`
- `Prob2/`
  - `odd.asm`
  - `odd.c`
  - `output2`
- `Prob3/`
  - `PrimeNo.asm`
  - `PrimeNo.c`
  - `output3`
- `Prob4/`
  - `gcd.asm`
  - `gcd.c`
  - `output4`
- `Prob5/`
  - `lcm.asm`
  - `lcm.c`
  - `output5`
- `readme_P1toP5.md`

### Assig4
- `Prob1/`
  - `output1`
  - `squareP.asm`
  - `squareP.c`
- `Prob2/`
  - `output2`
  - `quotientP.asm`
  - `quotientP.c`
- `Prob3/`
  - `chooseP.asm`
  - `chooseP.c`
  - `output3`
- `readme_P1toP3.md`

### Assig5 (masm)
- `__MACOSX/`
- `masm/`
  - `ADD.ASM`
  - `EVEN.ASM`
  - `ODD.ASM`
  - `SEARCH.ASM`
  - `SUB.ASM`
- `readme.md`

### Assig6
- `Prob1/`
  - `matrixAdd.asm`
  - `matrixAdd.c`
- `Prob2/`
  - `matrixMul.asm`
  - `matrixMul.c`
- `readme.md`

### MPI_Assig(1-6)Ques.pdf
Contains the questions for each lab assignment.

#### LabAssig-6 
1. Write an assembly language program to perform the addition of two N x N matrices.
2. Write an assembly language program to perform the multiplication of two N x N matrices.
   - Note: Use NASM and consider the value of N during run time.

#### LabAssig-5 
Take any five problems that we discussed in the first four lab assignments (i.e., Lab-1 to Lab-4) and implement them using the MASM assembler.

#### LabAssig-4 
Assume that you have a processor (P) and it supports ADD (Addition), SUB (Subtraction), INC (Increment), DEC, CMP (Compare), Jcc (Jump if a condition is met), JMP, XOR, and MOV operations. Assume that A and B are positive integers and A > B.
1. Write an assembly language program to compute the (A² − B²) on P.
2. Write an assembly language program to compute the quotient of (A³ − B³)/(A + B) on P.
3. Compute A choose B on P.

#### LabAssig-3
You are given with n positive integers. Write functions to compute the following using assembly language instructions:
1. To find the number of even numbers
2. To find the number of odd numbers
3. To find the number of prime numbers
4. To find the GCD of n numbers
5. To find the LCM of n numbers

#### LabAssig-2
Write assembly language programs to compute the following (use NASM assembler). Assume that all elements are integers:
1. Find the maximum of n numbers.
2. Find the minimum of n numbers.
3. Assume that you are given with a list of n elements then find the mode.
4. Assume that you are given with a list of n elements then find the median.
5. Assume that you are given with a list of n elements and key, search the key using linear search. If the required key is found, return its position. Otherwise, return -1.

#### LabAssig-1
1. Give the configuration of your laptop.
2. Give the configuration of a system in IT-Lab.
3. Develop C-Programs for the following problem statements:
   3.1. Print the internal representation of data stored in primary data types: int, float, and double.
   3.2. Perform addition and multiplication of two 32-bit numbers (Please remember that the input is a 32-bit binary number). The numbers can either be integers or real numbers.


### How to Run ASM and C Codes

To run the ASM and C codes, follow these steps:

1. Assemble the .asm file using NASM:
   ```sh
   nasm -felf64 file.asm

2. Compile the .o file and the .c file together using GCC:   
   ```sh
   gcc file.o file.c -o output

3. Run the output file:
   ```sh
   ./output
