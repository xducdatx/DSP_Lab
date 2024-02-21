// x_a (t)=3sin(100πt)

// draw x_a (t) in 5 periods
// period of x_a(t) = 0.02s
t = linspace(0, 5*0.02, 1000);
x_a = 3*sin(100*%pi*t);
plot(t, x_a)

// draw x(n) in 5 periods
// period of x(n) = 6s.
clf
subplot(1,3,3);
ax3 = gca();         // We will draw here later
xsetech([0 0 0.7 1]) // Defines the first Axes area
n = 0:30;
x_n = 3*sin(%pi*n/3);
plot([n ;n],[x_n ;0*n],'marker','d','markerFaceColor','green','markerEdgeColor','yel')
n2 = 0:0.01:30
x_n2 = 3*sin(%pi*n2/3);
plot(ax3, n2, x_n2)

// draw xq(n) with delta = 0.1 & use truncated method in 5 period.
delta = 0.1;
if x_n >= 0 then xq = delta * floor(x/delta);
    else xq = delta * ceil(x/delta);
end
clf
subplot(1,3,3);
xsetech([0 0 0.7 1]) // Defines the first Axes area
plot([n ;n],[xq ;0*n],'marker','d','markerFaceColor','green','markerEdgeColor','yel')
