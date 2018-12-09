Class {
	#name : #AOCExo2017Test,
	#superclass : #TestCase,
	#instVars : [
		'solver'
	],
	#category : #AdventOfCode
}

{ #category : #asserting }
AOCExo2017Test >> assertInput: dataString produces: expectedResult [
	
	| result |
	solver rawInputData: dataString.
	result := solver solve.
	self assert: result equals: expectedResult 
]

{ #category : #asserting }
AOCExo2017Test >> assertMySampleProduces: expectedResult [
	
	| result |
	result := solver solve.
	self assert: result equals: expectedResult 
]

{ #category : #accessing }
AOCExo2017Test >> puzzleClass [
	"naming convention - my subclasses' name my correspond to a puzzle solver class"
	^ self class environment at: (self class name asString allButLast: 4) asSymbol 
]

{ #category : #initialization }
AOCExo2017Test >> setUp [
	super setUp.
	solver := self puzzleClass new.
	
]
