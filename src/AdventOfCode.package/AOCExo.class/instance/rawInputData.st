data access
rawInputData
	^ inputData ifNil: [ inputData := self myPuzzleRawInputData ]