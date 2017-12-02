solving
isEvenlyDivisible: pair
	"returns true if the 2 numbers in pair are divisible"
	^ (pair first % pair second) = 0