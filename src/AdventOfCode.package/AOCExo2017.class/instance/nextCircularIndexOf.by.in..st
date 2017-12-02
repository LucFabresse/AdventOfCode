utils
nextCircularIndexOf: index by: step in: size
	"	returns (index + step) but ensures that it correctly loops given size and returns a valid index in [1..size] "
	
	^ ((index+(step-1))%(size))+1