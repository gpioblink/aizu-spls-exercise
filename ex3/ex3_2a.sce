[s,Fs] = wavread('abc.wav')

S = fft(s)
Ss = fftshift(S/(length(s)))

wavwrite(s,Fs, 'abc_s.wav')

subplot(2,1,1);
plot(s);
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")

subplot(2,1,2);
p = length(Ss)
plot(-p/2+1:p/2, abs(Ss)); 
xlabel('f');
ylabel('spectrum');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
