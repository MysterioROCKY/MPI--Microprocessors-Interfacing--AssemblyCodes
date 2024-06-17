Q3.1)->

The user can enter an integer, float, or double number with this C programme. The programme utilises the'scanf' function to gather these user inputs, and then 'int_Rep' displays the internal binary representation of each data type. 'int_Rep' function arguments are a pointer to data and its size. To extract the binary representation of the data at the bit level, it iterates over the data's constituent bytes, performing bitwise operations for each byte. Groups of 8 bits (or one byte) of the binary representation of each byte are written out between spaces.


Q3.2)->
The binary addition and multiplication of two 32-bit binary values are carried out using this C-code. The two 32-bit binary integers entered by the user are stored in the character arrays num1 and num2 by the programme. These two arrays are passed as input to the addBinary method, which outputs the sum in binary form. These two arrays are passed as input to the multiplyBinary function, which outputs the result in binary format. The results of addition and multiplication operations are then printed on the console by the programme.

In order to combine two binary integers, the addBinary function adds their respective bits, starting with the least significant bit (rightmost bit) and working towards the most significant bit (leftmost bit). The carry flag is set to 1 and is added to the following pair of bits if the total of the first two bits exceeds 1. The function keeps doing this until every bit has been added. At the conclusion of the addition, whatever carry that is left over is added to the most important bit.

Each bit of one number is multiplied by each bit of the other number in the multiplyBinary function. It multiplies the two numbers together, beginning with the less important component of each number. The result is subsequently included in the result array at the appropriate location. A carry that is still available is added to the result array's subsequent position if it exists. Up until all bits have been multiplied and added, this operation is repeated.





