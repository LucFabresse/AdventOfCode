solving
squareSizeOf: value 
	
	| squareSize |
	squareSize := 1.
	[ (squareSize*squareSize) < value ] whileTrue: [  squareSize := squareSize + 2 ].
	^ squareSize
	