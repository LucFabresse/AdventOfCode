asserting
assertInput: dataString produces: expectedResult
	
	| result |
	solver rawInputData: dataString.
	result := solver solve.
	self assert: result equals: expectedResult 