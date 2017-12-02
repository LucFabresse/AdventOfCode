solving
solve
	"
	AOCDay2Puzzle2Test
	
	self run 
	"
	
	| data |
	data := self inputData.
	^ self inputData inject: 0 into: [ :sum :row | 
			sum + (self rowReminderOf: row) ]