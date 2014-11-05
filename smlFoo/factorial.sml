fun fact(n: int) = 
	if n = 0 then 1 else n * fact(n-1)
	
fun gcd(m: int, n: int) = 
	if m = n then m 
	else if m > n then gcd(m-n, n) 
	else gcd(m, n - m) 