// EXERCISE 5

// Define some parameters
n = 0:1023;
f_signal = 20;
f_noise = 250;
T = 0.001;
sigLen = length(n); // Length of signal

// Implement input signal x(n) into "x"
x = zeros(1, sigLen);
piValue = %pi; // Value of pi
// Write your code here
x = 100*sin(2*piValue*f_signal*n*T)+10*sin(2*piValue*f_noise*n*T);



// Compute Fourier transform of x(n) into "x_k"
x_k = zeros(1,sigLen);
// Write your code here
x_k = fft(x);


// Define h(n)
h = [0.2 0.2 0.2 0.2 0.2];

// Compute y(n) into "y"
y = zeros(1, length(x)+length(h)-1);
// Write your code here
for n=1:length(y)
    for k=1:5
        if 0 <= n-k && n-k < length(x) //0≤ n-k <length(x)
            y(n)=y(n)+h(k)*x(n-k+1);
        end
    end
end


// Compute Fourier transform of y(n) into "y_k"
y_k = zeros(1, length(x)+length(h)-1);
// Write your code here
y_k = fft(y);


//=======================================================================
// Do NOT modify this part
// Plot x(n), y(n)
// Create figure for two signals
figure

// Plot x(n)
subplot(2,1,1) 
plot(x);
title('x(n)');
xlabel('n');
a=get("current_axes")
a.data_bounds=[0,-150;1000,150];

// Plot y(n)
subplot(2,1,2) 
plot(y);
title('y(n)');
xlabel('n');
a=get("current_axes")
a.data_bounds=[0,-150;1000,150];

// Plot x(k), y(k)
// Create figure for two signals
figure

// Plot x(k)
subplot(2,1,1) 
Fs = 1/T;
fshift = (-length(x_k)/2:length(x_k)/2-1)*(Fs/length(x_k)); // zero-centered frequency range
plot(fshift,abs(fftshift(x_k)));
title('x(k)');
xlabel('f');
a=get("current_axes")
a.data_bounds=[0,-1;500,40000];

// Plot y(k)
subplot(2,1,2) 
fshift = (-length(y_k)/2:length(y_k)/2-1)*(Fs/length(y_k)); // zero-centered frequency range
plot(fshift,abs(fftshift(y_k)));
title('y(k)');
xlabel('f');
a=get("current_axes")
a.data_bounds=[0,-1;500,40000];
