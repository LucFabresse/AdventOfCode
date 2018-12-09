Class {
	#name : #AOCDay3Puzzle1Test,
	#superclass : #AOCExo2017Test,
	#category : #AdventOfCode
}

{ #category : #tests }
AOCDay3Puzzle1Test >> testSample [
	
	self assertInput: 1  produces: 0.
	self assertInput: 11  produces: 2.
	self assertInput: 12  produces: 3.
	self assertInput: 23  produces: 2.
	self assertInput: 1024  produces: 31.
]
