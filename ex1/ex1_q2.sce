//EXERCISE 1 - QUESTION 2

close();

n = [0:10];

x = 2*(2+3*n);
y = 3*cos(n)
z = x+y;

subplot(221)
plot(n,x,'-o');
title('Signal x');
xlabel('n');
ylabel('x[n]= 2*(2+3*n)');
subplot(222)
plot(n,y,'-o');
title('Signal y');
xlabel('n');
ylabel('y[n]:  y = 3*cos(n)');
subplot(2,2,3)
plot(n,z,'-o');
title('Signal z');
xlabel('n');
ylabel('z = x+y');

