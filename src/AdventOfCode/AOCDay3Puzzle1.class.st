Class {
	#name : #AOCDay3Puzzle1,
	#superclass : #AOCExo2017,
	#category : #AdventOfCode
}

{ #category : #solving }
AOCDay3Puzzle1 >> middleValueOfRightSideOfSquareOfLength: squareSideLength [
	
	|xp minValueOfThisSquare |
	
	minValueOfThisSquare := ((squareSideLength-2)*(squareSideLength-2))+1.
	xp := ((squareSideLength-2)//2) +  minValueOfThisSquare.
	^ xp
]

{ #category : #'data  sample' }
AOCDay3Puzzle1 >> myPuzzleRawInputData [
	^ 347991
]

{ #category : #solving }
AOCDay3Puzzle1 >> solve [
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
	
]

{ #category : #solving }
AOCDay3Puzzle1 >> squareSizeOf: value [ 
	
	| squareSize |
	squareSize := 1.
	[ (squareSize*squareSize) < value ] whileTrue: [  squareSize := squareSize + 2 ].
	^ squareSize
	
]
