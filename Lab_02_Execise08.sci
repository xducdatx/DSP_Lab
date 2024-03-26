n = -3:3;
x_n = [0,1, -2, 3, 6, 0, 0]
subplot(3,2,1)
plot2d3(n, x_n)
title("x(n) signal")
xlabel("n")
ylabel("x(n)")

y1_n = x_n($:-1:1)
subplot(3,2,2)
plot2d3(n, y1_n)
title("y1(n) signal")
xlabel("n")
ylabel("y1(n)")

subplot(3,2,3)
plot2d3(n, x_n)
title("x(n) signal")
xlabel("n")
ylabel("x(n)")

subplot(3,2,5)
plot2d3(n, x_n)
title("x(n) signal")
xlabel("n")
ylabel("x(n)")

n = -5:1
x_n = [0, 1, -2, 3, 6, 0, 0]
subplot(3,2,4)
plot2d3(n, x_n)
title("y2(n) signal")
xlabel("n")
ylabel("y2(n)")

//y3_n = 2 * x_n($:-1:1)
y3_n = 2*x_n
y3_n = y3_n($:-1:1)
n = -5:1
subplot(3,2,6)
plot2d3(n, y3_n)
title("y3(n) signal")
xlabel("n")
ylabel("y3(n)")
