# Unaligned Memory Access in Assembly

This repository demonstrates a common error in assembly programming: unaligned memory access.  The `bug.asm` file contains code that attempts to load a 32-bit integer from a memory address that may not be properly aligned, leading to an exception.

The `bugSolution.asm` file provides a corrected version of the code, ensuring proper alignment before attempting memory access.  This example highlights the importance of careful memory address calculations and alignment considerations when working with low-level languages like assembly.