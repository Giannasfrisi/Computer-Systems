#include "ccalc.h"
#include "stdio.h"

/* cpopcnt: A new function for the c version of the calculator.  Takes
   in 1) the running result and 2) a signed integer value y.  The
   function should calculate the number of 1 bits in y and return the
   addtion of this count and the running result
 */

long long
cpopcnt(long long result, long long y)
{
  
  unsigned long long v=(unsigned long long)(y);
  long long cnt=0;
 

  // Turns out that something that was one INTEL instruction in 
  // assembly has no C counter part :-(
  // We are going to have to write some code
  // HINT:
  //       Right shifting (">>")an unsigned variable by 1 will produce
  //       a new binary value where all the bits have shifted down to
  //       the right by one and the new upper left bit will be set to
  //       0.
  //       eg if we have: unsigned long long y=0xffffffffffffffff; 
  //          then "v=v>>1;" will set y to 0x7fffffffffffffff;
  //          if you repeatly right shift v (63 times) you will end up
  //          with all the orginal bits having gone through the zeroth
  //          bit position
  //      Additionally: "masking" by bitwise anding a binary value by
  //      0x1 will yield the value only of the bit in the zeroth
  //      position.
  //         eg. "cnt = cnt + (v & 0x1);" will add one to the count if
  //             the bit in the zeroth position of v is 1 and it will
  //             and zero if the bit is zero
  //
  // using the above can you write a very small loop to count the
  // number of ones in v?

  // force program to crash here by trying to read address zero
  // remove this code and replace with code that calcluates popcnt
//  cnt = *((long long *)0);
  long long i;

  for (i=0; i< 64; i++){ //uses a for loop to increment the length of v
  cnt = cnt + (v & 0x1); //if v is one, adds one to cnt, if zero it adds nothing
  v=v>>1; //shifts v to the right
  }

  return result + cnt;
}