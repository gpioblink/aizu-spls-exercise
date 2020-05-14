[s,Fs] = wavread('abc.wav')
y = s / 2

S = fft(y)
Ss = fftshift(S/(length(y)))

wavwrite(y,Fs, 'abc_y.wav')

subplot(2,1,1);
plot(y);
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
