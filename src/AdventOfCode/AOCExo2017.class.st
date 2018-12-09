Class {
	#name : #AOCExo2017,
	#superclass : #Object,
	#instVars : [
		'inputData'
	],
	#category : #AdventOfCode
}

{ #category : #running }
AOCExo2017 class >> run [
	^ self new solve
]

{ #category : #'data access' }
AOCExo2017 >> inputData [
	^ self rawInputData 
]

{ #category : #'data  sample' }
AOCExo2017 >> myPuzzleRawInputData [
	^ self subclassResponsibility 
]

{ #category : #utils }
AOCExo2017 >> nextCircularIndexOf: index by: step in: size [
	"	returns (index + step) but ensures that it correctly loops given size and returns a valid index in [1..size] "
	
	^ ((index+(step-1))%(size))+1
]

{ #category : #'data access' }
AOCExo2017 >> rawInputData [
	^ inputData ifNil: [ inputData := self myPuzzleRawInputData ]
]

{ #category : #'data access' }
AOCExo2017 >> rawInputData: aString [
	inputData := aString
]
