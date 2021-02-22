CXX = g++
CXXFLAGS = -std=c++14 -Wall -Werror -g -MMD
EXEC = chess
OBJECTS = src/bishop.o src/board.o src/empty.o src/graphicsdisplay.o src/human.o src/king.o src/knight.o src/main.o src/pawn.o src/piece.o src/queen.o src/rook.o src/scoreboard.o src/textdisplay.o src/utility.o src/window.o src/opening.o
DEPENDS = ${OBJECTS:.o=.d}

${EXEC}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC} -lX11

-include ${DEPENDS}

clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS}
.PHONY: clean
