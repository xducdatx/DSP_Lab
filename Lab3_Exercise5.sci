function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    if x1origin > x2origin then
        x2n = [zeros(1, x1origin - x2origin), x2n];
    else
        x1n = [zeros(1, x2origin - x1origin), x1n];
    end
    if length(x1n) > length(x2n) then
        x2n = [x2n, zeros(1, length(x1n) - length(x2n))];
    else
        x1n = [x1n, zeros(1, length(x2n) - length(x1n))];
    end
    yorigin = max(x1origin, x2origin);
    yn = x1n .* x2n;

endfunction

x1n = [0, 1, 3, -2];
x1origin = 1;
x2n = [1, 1, 2, 3];
x2origin = 2;
[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
disp(x1n)
disp(x1origin)
disp(x2n)
disp(x2origin)
disp(yn)
disp(yorigin)


n_x1 = (1-x1origin):(length(x1n) - x1origin)
n_x2 = (1-x2origin):(length(x2n) - x2origin)
n_y = (1-yorigin):(length(yn) - yorigin)
plot(n_x1, x1n, "o")
plot(n_x2, x2n, "x")
plot(n_y, yn, "*")
title("Graph")
xlabel("n")
ylabel("function(n)")
gca().data_bounds = [min(min(n_x), min(n_y)) - 1, min(min(xn), min(yn)) - 1; max(max(n_x), max(n_y)) + 1, max(max(xn), max(yn)) + 1];
