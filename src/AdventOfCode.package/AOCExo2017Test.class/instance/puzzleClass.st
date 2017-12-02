accessing
puzzleClass
	"naming convention - my subclasses' name my correspond to a puzzle solver class"
	^ self class environment at: (self class name asString allButLast: 4) asSymbol 