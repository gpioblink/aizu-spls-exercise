//EXERCISE 2 - Problem 2.1
close();
n = [0:100];
x = cos(0.1*n);
y = zeros(1,101);
z = zeros(1,101);
r = zeros(1,101);
w = zeros(1,101);
figure
subplot(2,1,1); 
plot(n,x,'b')
legend('x',-1);
title('Signal x[n]');
xlabel('n');
ylabel('Signal');
//Move x-axis and y-axis to the origin
a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
//================================================
// Your task is to write code for each stage of the system

// Step 1: Attenuation: the value of the signal is reduced by half 
// Write your code here

y = x ./ 2

// Step 2: Delay: the signal is delayed by 5 units
// Write your code here

for i = n + 1
    if i > 5
        z(i) = y(i-5)
    end
end


// Step 3: Noise: a noise signal s[n] is added to the signal
//- Step 3.1: Define a noise signal s[n]
// Write your code here

s = rand(1,101)-0.5

//- Step 3.2: Add the noise signal s[n] to the signal
// Write your code here

r = z + s

// Step 4: Filter
// Write your code here

for i = n + 1
    if i > 5
        w(i) = (r(i) + r(i-1) + r(i-2) + r(i-3) + r(i-4))/5
    end
end

//=================================================
// Do not modify this part
//Plot y[n], z[n], r[n], w[n]
subplot(2,1,2);
plot(n,y,'b--'); 
plot(n,z,'g'); 
plot(n,r,'k'); 
plot(n,w,'r-');
legend(['y','z','r','w'],-1);
title('Signals y[n], z[n], r[n], w[n]');
xlabel('n');
ylabel('Signal');
//Move x-axis and y-axis to the origin
a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")

