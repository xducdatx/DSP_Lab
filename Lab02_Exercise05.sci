n = -2:2;
x_n = [0, 1, 3, -2, 0];

subplot(1,3,1)
plot2d3(n, x_n)
title("x(n) signal")
xlabel("n")
ylabel("x(n)")
x_nc = x_n($:-1:1); // x_nc is x_n folding

xe_n = 0.5 * (x_n + x_nc) // even signal
xo_n = 0.5 * (x_n - x_nc) // odd signal

subplot(1,3,2)
plot2d3(n, xe_n)
title("even signal component")
xlabel("n")
ylabel("xe(n)")
subplot(1,3,3)
plot2d3(n, xo_n)
title("odd signal component")
xlabel("n")
ylabel("xo(n)")
