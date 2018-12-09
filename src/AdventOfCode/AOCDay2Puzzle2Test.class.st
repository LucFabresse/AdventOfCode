Class {
	#name : #AOCDay2Puzzle2Test,
	#superclass : #AOCExo2017Test,
	#category : #AdventOfCode
}

{ #category : #tests }
AOCDay2Puzzle2Test >> testMySample [
	"AOCDay2Puzzle2 >> myPuzzleRawInputData"
	self assertMySampleProduces: 214
]

{ #category : #tests }
AOCDay2Puzzle2Test >> testSample [
	
	self assertInput: '5	9	2	8
9	4	7	3
3	8	6	5'  produces: 9
]
