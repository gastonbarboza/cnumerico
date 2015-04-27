function raiz = regfalsi (f,a,b)
	M=5000;
	tol=0.00001;
	if sign(f(a)) == sign(f(b))
		printf("No se pueden hallar raíces (sign(a) == sign(b))  \n")
		break
	else
		for k=0:M
			c = (a*f(b)-b*f(a))/(f(b)-f(a));
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
