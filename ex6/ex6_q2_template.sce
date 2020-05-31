// EXERCISE 6 - QUESTION 2

// Change values of p and q to (2, 4), (5, 5) or (5, 10)
p = 2;
q = 4;

// Define some parameters
a = 0.1; // a(k)=0.1
b = 0.4; // b(k)=0.4
omega = -%pi:2*%pi/100:%pi; // omega=[-pi:pi]

// Initialize B(e^jw) and A(e^jw)
B = zeros(1,length(omega));
A = zeros(1,length(omega));

// Compute B(e^jw) into "B"
// Write your code here
for m=0:q
    B = B+b*((exp(%i*omega))^(-m));
end

// Compute A(e^jw) into "A"
// Write your code here
for m=0:p
    if m==0
        A = 1;
    else
        A = A+a*((exp(%i*omega))^(-m));
    end
end

// Compute H(e^jw) into "H"
// Write your code here
H = B./A;

disp(H)

// Plot H(e^jw)
figure;
plot(abs(H));
title(sprintf('q = %d, p = %d',q,p));
xlabel('|H(ejw)|');

