[x,Fs] = wavread('abc.wav')

k = 4 * x
y = k - 0.25

nc = length(y)

for i = 0:nc
    if i > 10
        z(i) = y(i-10)
    end
end


wavwrite(z,Fs, 'abc_z.wav')

plot(z); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
