solving
solve
	" 
	AOCDay2Puzzle1Test
	self  run >>> 34581 
	"
	
	^ self inputData inject: 0 into: [ :sum :row | 
		sum + (row max - row min) ]