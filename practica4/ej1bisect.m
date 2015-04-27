function raiz = bisect (f,a,b,tol)
	if sign(f(a)) == sign(f(b))
		printf("No se pueden hallar raíces (sign(a) == sign(b))  \n")
		break
	else
		c = (a+b)/2
		f(c)
		if f(c) == 0
			raiz = c;
		else
			if abs(f(c)) > tol
				if sign(f(c)) == sign(f(a))
					bisect (f,c,b,tol)
				else
					bisect (f,a,c,tol)
				endif
			else
				raiz = c;
			endif
		endif
	endif
endfunction
