// EXERCISE 4 
//close();
clear

//// =================================================
// Do not modify this part
function []=datwrite(Sc_k, kc, filename)
    fd_w = mopen(filename, 'w');
    for i=1:kc
        mputl(msprintf('%d',real(Sc_k(i))),fd_w);
        mputl(msprintf('%d',imag(Sc_k(i))),fd_w);
    end
    mclose(fd_w);
end

//// =================================================
//// Question 2.1 --> 2.4
// Change k_c to 1000, 2000, 3000
// Write your code here
kc = 3000;

// Load audio
// Write your code here
[s_n,Fs] = wavread('voice.wav');

// Compute Fourier transform of s_n
// Write your code here
S_k=fft(s_n);

// Compute length of signal 
N = length(S_k);

//================================================
//// Question 2.1
// Modify S_k by an ideal-filter in frequency 
// Write your code here

for k = 1:N
    if (k <= kc+1) or (k > N-kc)
        Sc_k(k)= S_k(k);
    else
        Sc_k(k)= 0;
    end
end

// Plot Sc_k
figure
subplot(1,2,1)
plot(abs(S_k));
title(['S_k']);
xlabel('k');
subplot(1,2,2)
plot(abs(Sc_k));
title(msprintf('S_c[k] when kc=%d',kc));
xlabel('k');


//// Question 2.2
// Save frequency into .dat files using datwrite(Sc_k, kc, filename)
filename = msprintf('%d.dat',kc);
// Write your code here
datwrite(Sc_k, kc, filename);


//// Question 2.3
// Inverse transform into "sc_n" using ifft of Sc_k
// Write your code here
sc_n = ifft(Sc_k);

// Plot sc_n
figure
subplot(1,2,1)
plot(s_n);
title(['Original audio signal s[n]']);
xlabel('n');
subplot(1,2,2)
plot(sc_n);
title(msprintf('Modified audio signal s_c[n] when kc=%d',kc));
xlabel('n');


//// Question 2.4
// Save the modified signal into .wav files  using wavwrite(sc_n,Fs,file_name);
file_name = msprintf('%d.wav',kc);
// Write your code here
wavwrite(sc_n, Fs, file_name);


