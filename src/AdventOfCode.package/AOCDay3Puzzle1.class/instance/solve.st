solving
solve
	"
	AOCDay3Puzzle1Test
	
	self run >>> 480 
	
		+----	middleValue ----+
		|							 |
	middleValue   1	      middleValue 
		|							 |
		+----	middleValue ----+
	
	if data = one of middlevalues => number of moves := (squareSideLength//2)
	
	if data = one value placed in +, - or | posisitions => (data-closestMiddleValue) abs + (squareSideLength//2)
	"
	
	| data squareSideLength middleValueOfRightSideOfSquare closestMiddleValue |
	data := self inputData.
	
	data = 1 ifTrue: [ ^ 0 ].
	
	squareSideLength := self squareSizeOf: data.
	middleValueOfRightSideOfSquare := self middleValueOfRightSideOfSquareOfLength: squareSideLength.
	closestMiddleValue := middleValueOfRightSideOfSquare.
	
	"if data is a value directly aligned with the middle"
	0 to: 3 do: [ :middleIndex | 
		|middleValue|
		middleValue := middleValueOfRightSideOfSquare+((squareSideLength-1)*middleIndex).
		(data=middleValue) ifTrue: [ ^ squareSideLength//2 ].
		((data-closestMiddleValue) abs > (data-middleValue) abs) 
			ifTrue: [ closestMiddleValue := middleValue ] ].

	^ 	(data-closestMiddleValue) abs + (squareSideLength//2)
	