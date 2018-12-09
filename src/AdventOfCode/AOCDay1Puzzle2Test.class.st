Class {
	#name : #AOCDay1Puzzle2Test,
	#superclass : #AOCExo2017Test,
	#category : #AdventOfCode
}

{ #category : #tests }
AOCDay1Puzzle2Test >> testMySample [
	self assertMySampleProduces: 1166
]

{ #category : #tests }
AOCDay1Puzzle2Test >> testSamples [
	
	{ '1212' -> 6. "the list contains 4 items, and all four digits match the digit 2 items ahead."
	  '1221' -> 0. "because every comparison is between a 1 and a 2."
	  '123425' -> 4. "because both 2s match each other, but no other digit has a match."
	  '123123' -> 12.
	  '12131415' -> 4 } do: [ :dataAssoc | 
		self assertInput: dataAssoc key produces: dataAssoc value ]
	

]
