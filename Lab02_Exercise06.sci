n = -1:3;
x1_n = [0, 0, 1, 3, -2];
x2_n = [0, 1, 2, 3, 0];
y_n = x1_n + x2_n;

subplot(1,3,1)
plot2d3(n, x1_n)
title("x1(n) signal")
xlabel("n")
ylabel("x1(n)")

subplot(1,3,2)
plot2d3(n, x2_n)
title("x2(n) signal")
xlabel("n")
ylabel("x2(n)")

subplot(1,3,3)
plot2d3(n, y_n)
title("y(n) signal")
xlabel("n")
ylabel("y(n)")

