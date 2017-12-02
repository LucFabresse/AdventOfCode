asserting
assertMySampleProduces: expectedResult
	
	| result |
	result := solver solve.
	self assert: result equals: expectedResult 