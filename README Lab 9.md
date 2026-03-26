# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names Peter Krahn Troy Fowers

## Summary

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

We do not use structural Verilog to implement latches because of FPGA inefficiency using look up tables for FPGA and other logic increases routing times because FPGA's are made for edge trigger optimization. Timing difficulties: latches are level sensitive which makes timing difficult for static timing analysis tools. 

### What is the meaning of always @(\*) in a sensitivity block?

Always @(\*) automatically creates a complete sensitivity list. This list will include avoiding latches which means all inputs will be considered which prevents creation of unintended latches. 

### What importance is memory to digital circuits?

Without memory systems cannot store information without memory state (where circuits remember past operations) cannot exist. Memory holds instructions and data so without memory instructions can never be executed (or if it can it will be executed at a extremely slow rate).

