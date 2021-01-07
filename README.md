# VHDL_Circuits
Some circuits that i did in college


###Circuit 1
2-to-1 multiplexer

###Circuit 2
1-to-2 demultiplexer

###Circuit 3
Using circuit 1 and circuit 2, the system has 2 inputs connected in 2-to-1 multiplexer and the multiplexer output is the input of demultiplexer 1-to-2, and the two demultiplexer outputs, is the outputs of system. 

###Circuit 4
Static priority encoding circuit using 4 requisitions. The circuit have four inputs and outputs and the policy priorities is: p (0)> p (1)> p (2)> p (3). The requisition identification is done using the encoding one-hot.

###Circuit 5
Extension of circuit 4 with selected request identifier using two-bit binary encoding

###Circuit 6
Digital System using circuit 1 and 2. The system have four inputs of requisition and three outputs. The first output is active whenever at least one requisition is actived and the others two is the identificatiosn of requisitions. For default we use "00".
 
