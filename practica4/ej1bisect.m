function raiz = bisect (f,a,b)
	M=5000;
	tol=0.00001;
	if sign(f(a)) == sign(f(b))
		printf("No se pueden hallar raíces (sign(a) == sign(b))  \n")
		break
	else
		for k=1:M
			c = (a+b)/2;
			paso=k;
			if abs(f(c)) < tol
				raiz = c;
				break
			elseif sign(f(c)) == sign(f(a))
				a=c;
			else
				b=c;
			endif
		endfor
		raiz = c;
		paso
	endif
endfunction
