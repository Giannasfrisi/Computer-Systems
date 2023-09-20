all: andtest ortest sumtest

#and calls
andtest: and.o andtest.o 
	ld and.o andtest.o -o andtest

and.o: and.s
	as -g and.s -o and.o

andtest.o: andtest.s
	as -g andtest.s -o andtest.o

#or calls 
ortest: or.o ortest.o
	ld or.o ortest.o -o ortest

or.o: or.s
	as -g or.s -o or.o

ortest.o: ortest.s
	as -g ortest.s -o ortest.o

#sum calls
sumtest: sum.o sumtest.o
	ld sum.o sumtest.o -o sumtest

sum.o: sum.s
	as -g sum.s -o sum.o

sumtest.o: sumtest.s
	as -g sumtest.s -o sumtest.o
	
