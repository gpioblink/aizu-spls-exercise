[x,Fs] = wavread('abc.wav')

k = 4 * x
y = k - 0.25

nc = length(y)

for i = 0:nc
    if i > 10
        z(i) = y(i-10)
    end
end

s = ((rand(length(z),1).^2000)-(rand(length(z),1).^2000))

r = z + s

n = length(r)
tv = 20
for i = 1:n
    mem = 0
    for j = 0:tv
        if i-j >= 1
            mem = mem + r(i-j)
        end
    end
    w3(i) = mem / tv
end

wavwrite(w3,Fs, 'abc_w3.wav')

plot(w3); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
