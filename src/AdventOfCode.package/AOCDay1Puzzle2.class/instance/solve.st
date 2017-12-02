solving
solve
	"
	AOCDay1Puzzle2Test
	
	self run >>> 1166 
	"
	
	| sum size step |
	sum := 0.
	size := self inputData size.
	step := size // 2.
	
	self inputData 
		doWithIndex: [ :char :index |
			|possibleMatchingIndex| 
			possibleMatchingIndex := self nextCircularIndexOf: index by: step in: size.
			(char = (self inputData at: possibleMatchingIndex)) 
				ifTrue: [ sum := sum + char digitValue ] ].
	
	^ sum