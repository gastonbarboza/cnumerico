function raiz = secant(f,a,b)
	M=5000;
	tol=0.00001;
	x1 = a;
	x2 = b;
	for k = 0:M
		ev1 = f(x1);
		ev2 = f(x2);
		h = ev2*(x1-x2)/(ev1-ev2);
		paso=k;
		if abs(ev2)<tol
			raiz = x2;
			break
		elseif abs(h)<tol
			raiz = x2;
			break
		else
			x3 = x2 - h;
			x1 = x2;
			x2 = x3;
		endif
	endfor
	paso
endfunction
