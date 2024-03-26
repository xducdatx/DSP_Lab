function [yn, yorigin] = delay(xn, xorigin, k)
    yorigin = xorigin - k
    if yorigin < 1 then 
        yn = [zeros(1, 1 - yorigin), xn];
        yorigin = 1;
    else
        yn = xn
    end
endfunction
xn = [1, -2, 3, 6];
xorigin = 3;
k = 1;
[yn, yorigin] = delay(xn, xorigin, k)
disp(xn)
disp(xorigin)
disp(yn)
disp(yorigin)

n_x = (1-xorigin):(length(xn) - xorigin)
n_y = (1-yorigin):(length(yn) - yorigin)
disp(n_x)
plot(n_x, xn, "o")
plot(n_y, yn, "*")
title("Graph")
xlabel("n")
ylabel("function(n)")
gca().data_bounds = [min(min(n_x), min(n_y)) - 1, min(min(xn), min(yn)) - 1; max(max(n_x), max(n_y)) + 1, max(max(xn), max(yn)) + 1];
