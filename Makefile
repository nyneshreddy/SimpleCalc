SRC=uglycalc.cpp
OBJ=uglycalc.o

TST=test1 test2 test3

$(OBJ): $(SRC)
	g++ -std=gnu++11 $(SRC) -o $(OBJ)

test: $(TST)

.PHONY: $(TST)

$(TST): test%:
	./$(OBJ) < input/$*.in
