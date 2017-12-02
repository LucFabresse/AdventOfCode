solving
rowReminderOf: row 
	"computes the result of the division of the only 2 evenly divisible values in row"
	row combinations: 2 atATimeDo: [ : combination | 
		{ combination . combination reversed } do: [ : pair |
			(self isEvenlyDivisible: pair) 
				ifTrue: [ ^ (pair first // pair second) ]]]