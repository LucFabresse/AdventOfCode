Class {
	#name : #AOCDay2Puzzle1Test,
	#superclass : #AOCExo2017Test,
	#category : #AdventOfCode
}

{ #category : #tests }
AOCDay2Puzzle1Test >> testMySample [
	"AOCDay2Puzzle1 >> myPuzzleRawInputData"
	self assertMySampleProduces: 34581
]

{ #category : #tests }
AOCDay2Puzzle1Test >> testSample [
	
	self assertInput: '5	1	9	5
7	5	3
2	4	6	8'  produces: 18
]
