Class {
	#name : #AOCDay1Puzzle1Test,
	#superclass : #AOCExo2017Test,
	#category : #AdventOfCode
}

{ #category : #tests }
AOCDay1Puzzle1Test >> testMySample [
	"AOCDay1Puzzle1 >> myPuzzleRawInputData"
	self assertMySampleProduces: 1175
]

{ #category : #tests }
AOCDay1Puzzle1Test >> testSample1 [
	
	self assertInput: '1122' produces: 3.
	

	
]

{ #category : #tests }
AOCDay1Puzzle1Test >> testSample2 [
	
	self assertInput: '1111' produces: 4.
	

	
]

{ #category : #tests }
AOCDay1Puzzle1Test >> testSample3 [
	
	self assertInput: '1234' produces: 0.
	

	
]

{ #category : #tests }
AOCDay1Puzzle1Test >> testSample4 [
	
	self assertInput: '91212129' produces: 9.
	

	
]
