data access
inputData
	
	"filtering raw data"
	^ (self rawInputData splitOn: Character cr) 
			collect: [ :line | (line splitOn: Character tab) 
				collect: [ :c |  c asNumber ] ]