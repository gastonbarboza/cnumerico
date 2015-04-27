function raiz = newton(f,g,a)
	M=5000;
	tol=0.00001;
	x = a;
	for k = 0:M
		ev = f(x);
		h = ev/g(x);
		paso=k;
		if abs(ev)<tol
			raiz = x;
			break
		elseif abs(h)<tol
			raiz = x;
			break
		else
			x = x - h;
		endif
	endfor
	paso
endfunction
