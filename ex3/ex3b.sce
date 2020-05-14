x = wavread('abc.wav')

k = 4 * x
y = k - 0.25

wavwrite(y,Fs, 'abc_y.wav')

plot(y); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
