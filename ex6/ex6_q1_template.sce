// EXERCISE 6 - QUESTION 1

// Change N to 30, 60, 100 and 160
N = 30; 

// Define some parameters
wc = %pi/3; // omega
n = -2*N:2*N; // timestep n=[-2N:2N]

// Initialize h(n)and H(e^jw)
h = zeros(1,4*N+1);
H = zeros(1,4*N+1);

// Define h(n)
// Write your code here
for k=1:length(h)
    if n(k)==0
        h(k)= wc/%pi;
    elseif n(k) >= -N || n(k) <= N
        h(k) = (wc/%pi)*(sin(wc*n(k))/(wc*n(k)));
    else
        h(k)=0;
    end
end

// Compute frequency response into "H(e^jω)" using fft function
// Write your code here
H=fft(h);


// Plot frequency response H(e^jω)
figure
plot(abs(H(1:N)));
title(sprintf('Frequency response when N=%d',N));
