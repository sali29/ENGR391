%complex exponential
clear
clc
close all
t=[0:0.1:6*pi];
w=1;
A=exp(i*w*t);
B=real(A);
C=imag(A);

figure

for n=1:length(A)
    subplot(3,1,[1 2])
plot(A)
axis square
grid on
xlabel('R')
ylabel('Im')
hold on
plot(A(n),'ro')
plot(B(n),0,'bo')
plot(0,C(n),'go')
text(0,0.2,['t = ' num2str(t(n))])
title(['A = ' num2str(A(n))])

hold off

subplot(3,1,3)
plot(t(n),B(n),'b.')
hold on
plot(t(n),C(n),'g.')
legend('real','imaginary')
xlim([0 max(t)])
ylim([min(B) max(B)])
grid on
hold on

pause (0.01)

end
