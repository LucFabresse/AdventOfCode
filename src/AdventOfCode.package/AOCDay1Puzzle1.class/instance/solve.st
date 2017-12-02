solving
solve
	" 
	cf. AOCDay1Puzzle1Test
	
	self  run
	"
	
	| sum |
	
	sum := 0.
	self inputData overlappingPairsDo: [ :previousCharacter :nextCharacter | 
		(previousCharacter=nextCharacter) ifTrue: [  
			sum := sum + (previousCharacter digitValue) ] ].
	
	self inputData first = self inputData last ifTrue: [  
		sum := sum + (self inputData first digitValue) ]. 
	
	^ sum
	
