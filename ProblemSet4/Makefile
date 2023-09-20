SRC = calc.o or.o and.o sum.o upper.o

calc_basic: data/basic_cmds.o $(SRC)
	ld -g $^ -o $@

calc_upperonly: data/upperonly_cmds.o $(SRC)
	ld -g $^ -o $@

calc_easy: data/easy_cmds.o $(SRC)
	        ld -g $^ -o $@

calc_basicwithupper: data/basicwithupper_cmds.o $(SRC)
	        ld -g $^ -o $@

calc_simplerandom: data/simplerandom_cmds.o $(SRC)
	        ld -g $^ -o $@

calc_simpleone: data/simpleone_cmds.o $(SRC)
	        ld -g $^ -o $@

calc.o: calc.s 
	as -g $^ -o $@

or.o: or.s
	as -g $^ -o $@

and.o: and.s
	as -g $^ -o $@

sum.o: sum.s
	as -g $^ -o $@

upper.o: upper.s
	as -g $^ -o $@

data/basic_cmds.o: data/basic_cmds.s
	as -g $^ -o $@

data/upperonly_cmds.o: data/upperonly_cmds.s
	as -g $^ -o $@

data/easy_cmds.o: data/easy_cmds.s
	as -g $^ -o $@

data/basicwithupper_cmds.o: data/basicwithupper_cmds.s
	as -g $^ -o $@

data/simplerandom_cmds.o: data/simplerandom_cmds.s
	as -g $^ -o $@

data/simpleone_cmds.o: data/simpleone_cmds.s
	as -g $^ -o $@

clean:
	rm -rf calc *.o
