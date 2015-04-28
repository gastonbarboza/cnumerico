>>> f = inline ("x^3-2");
>>> g = inline ("3*x^2");

>>> bisect (f,1,2)
paso =  18
ans =  1.2599

>>> regfalsi (f,1,2)
paso =  13
ans =  1.2599

>>> newton (f,g,2)
paso =  4
ans =  1.2599

>>> secant(f,3,2)
paso =  6
ans =  1.2599
