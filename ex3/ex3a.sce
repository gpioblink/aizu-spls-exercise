[x,Fs] = wavread('abc.wav')

k = 4 * x

wavwrite(k,Fs, 'abc_k.wav')

plot(k); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
