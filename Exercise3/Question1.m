clc;
clear;

%main func
f = @(x) sin(x);
g = @(x) 0*x;

%variables
T = 2*pi;
Omega = (2*pi)/T;
period = -4*pi : 0.05 : 4*pi;

%Fourier coefficients
a0 = (2/(2*pi)) * (integral(g,-1*pi,0) + integral(f,0,pi));
an = @(n) (2/(2*pi)) * (integral(@(x) g(x).*cos(n*Omega*x),-1*pi,0) + integral(@(x) f(x).*cos(n*Omega*x),0,pi));
bn = @(n) (2/(2*pi)) * (integral(@(x) g(x).*sin(n*Omega*x),-1*pi,0) + integral(@(x) f(x).*sin(n*Omega*x),0,pi));

%calculating an & bn for n=1:100
for i=1:20
    anResult(i) = an(i);
    bnResult(i) = bn(i);
end

%calculating Fourier
for j=1:length(period)
    result(j) = (a0/2);
    for k=1:20
        result(j) = result(j) + an(k)*cos(k*Omega*period(j)) + bn(k)*sin(k*Omega*period(j));
    end
end

%plot an & bn
subplot(2,1,1);
N=1:20;
plot(N,anResult,'m-', N,bnResult,'c-.') , grid;
legend('an','bn');
xlabel('n');
ylabel('an | bn');
title('an & bn Curves');

%plot Fourier
subplot(2,1,2);
plot(period,result,'k-') , grid;
xlabel('x');
ylabel('Fourier(x)');
title('Fourier Series');