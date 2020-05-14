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
tv = 10
for i = 1:n
    mem = 0
    for j = 0:tv
        if i-j >= 1
            mem = mem + r(i-j)
        end
    end
    w2(i) = mem / tv
end

wavwrite(w2,Fs, 'abc_w2.wav')

plot(w2); 
xlabel('t');
ylabel('amplitude');

a=get("current_axes");
set(a,"x_location","origin")
set(a,"y_location","origin")
