function raiz = newton(f,g,a)
	M=5000;
	tol=0.00001;
	x = a;
	for k = 1:M
		ev = f(x)
		h = ev/g(x)
		if abs(ev)<tol
			raiz = x
			break
		elseif abs(h)<tol
			raiz = x
			break
		else
			x = x - h
		endif
	endfor
endfunction
