// Create a vector in the form of (x1 + 1, x2 + 1, x3 + 1, x4 + 1) where x1, x2, x3, x4 are components of vector x = 1:4.
x = 1:4;
result1 = x + 1;
disp("Result1: ")
disp(result1)

// Create a vector in the form of (x1y1, x2y2, x3y3, x4y4) where x1…x4 and y1…y4 are components of vector x=1:4 and vector y=5:8, respectively.
x = 1:4;
y = 5:8;
result2 = x .* y;
disp("Result2: ")
disp(result2)

// Create a vector in the form of (sin(x1), sin(x2), . . . , sin(x10)) where x is a vector of 10 values linearly chosen in the interval [0, π].
x = linspace(0, %pi, 10);
result3 = sin(x);
disp("Result3: ")
disp(result3)
