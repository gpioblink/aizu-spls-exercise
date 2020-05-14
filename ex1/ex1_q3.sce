//EXERCISE 1 - QUESTION 3

close();
exec('amplify.sce');

n = [0:10];

x = 2+3*n;
y = amplify(x, 5);
z = amplify(x, -3);

plot(n,x,'b-o');
plot(n,y,'r--*');
plot(n,z,'g:+');
title('Amplifier');
xlabel('n');
ylabel('Signal');
legend('x[n]= 2+3*n','y[n]=x+5','z[n]=x-3');

