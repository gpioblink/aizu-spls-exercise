[x,Fs] = wavread('abc.wav')

k = 4 * x
y = k - 0.25

nc = length(y)

for i = 0:nc
    if i > 10
        z(i) = y(i-10)
    end
end

s = ((rand(length(x),1).^2000)-(rand(length(x),1).^2000))

r = z + s

wavwrite(r,Fs, 'abc_r.wav')

plot(r); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
