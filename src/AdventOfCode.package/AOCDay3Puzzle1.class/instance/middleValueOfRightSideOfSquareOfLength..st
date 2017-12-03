solving
middleValueOfRightSideOfSquareOfLength: squareSideLength
	
	|xp minValueOfThisSquare |
	
	minValueOfThisSquare := ((squareSideLength-2)*(squareSideLength-2))+1.
	xp := ((squareSideLength-2)//2) +  minValueOfThisSquare.
	^ xp