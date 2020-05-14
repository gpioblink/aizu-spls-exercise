[s,Fs] = wavread('abc.wav')

for n = 1:length(s)*2
    if modulo(n,2) then
        z(n) = s((n+1)/2)
    else
        z(n) = s(n/2)
    end
end

S = fft(z)
Ss = fftshift(S/(length(z)))

wavwrite(z,Fs, 'abc_z.wav')

subplot(2,1,1);
plot(z);
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
