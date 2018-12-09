"
Note:
	using non-local return of blocks is nice to not finish loops on long collections but it requires to split the code multiple methods
	(kind of break in C-like languages)
"
Class {
	#name : #AOCDay2Puzzle2,
	#superclass : #AOCDay2Puzzle1,
	#category : #AdventOfCode
}

{ #category : #solving }
AOCDay2Puzzle2 >> isEvenlyDivisible: pair [
	"returns true if the 2 numbers in pair are divisible"
	^ (pair first % pair second) = 0
]

{ #category : #solving }
AOCDay2Puzzle2 >> rowReminderOf: row [ 
	"computes the result of the division of the only 2 evenly divisible values in row"
	row combinations: 2 atATimeDo: [ : combination | 
		{ combination . combination reversed } do: [ : pair |
			(self isEvenlyDivisible: pair) 
				ifTrue: [ ^ (pair first // pair second) ]]]
]

{ #category : #solving }
AOCDay2Puzzle2 >> solve [
	"
	AOCDay2Puzzle2Test
	
	self run 
	"
	
	| data |
	data := self inputData.
	^ self inputData inject: 0 into: [ :sum :row | 
			sum + (self rowReminderOf: row) ]
]
