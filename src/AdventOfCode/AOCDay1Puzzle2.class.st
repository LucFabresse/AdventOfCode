"
http://adventofcode.com/2017/day/1

Notes: 
	I would have liked a kind of CircularStreamOnSequenceableCollection to not manage the index myself.
	perhaps I soulh look at XStreams some day
"
Class {
	#name : #AOCDay1Puzzle2,
	#superclass : #AOCDay1Puzzle1,
	#category : #AdventOfCode
}

{ #category : #solving }
AOCDay1Puzzle2 >> solve [
	"
	AOCDay1Puzzle2Test
	
	self run >>> 1166 
	"
	
	| sum size step |
	sum := 0.
	size := self inputData size.
	step := size // 2.
	
	self inputData 
		doWithIndex: [ :char :index |
			|possibleMatchingIndex| 
			possibleMatchingIndex := self nextCircularIndexOf: index by: step in: size.
			(char = (self inputData at: possibleMatchingIndex)) 
				ifTrue: [ sum := sum + char digitValue ] ].
	
	^ sum
]
