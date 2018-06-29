%%ゼミで用いたフーリエ級数展開に関するプログラム
clear
t = linspace(-2*pi(),2*pi(),1000);%等間隔ベクトル作成
n = 10;%Σ項数を入力
ft = 0;
for k = 1:1:n
    ft = ft + 2*(((1-((-1)^k))/(k*pi()))) * sin(k*t);%矩形波
    %ft = ft + (2*(-1)^(k+1)) / k * sin(k*t);%のこぎり波
    %ft = ft +  + 8/(pi()*(k)^2)*sin(k*pi()/2).'*sin(k*t);%三角波

end

figure
subplot(2,1,1)       % add first plot in 2 x 1 grid
plot(t,ft,'r');
xticks([-3*pi -2*pi -pi 0 pi 2*pi 3*pi])
xticklabels({'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'})
yticks([-1 -0.5 0 0.5 1])
xlabel('サンプル番号')
ylabel('振幅')
title('級数展開')

% 
% fs = 10000;
% y = fft(ft);
% n = length(ft);          % number of samples
% f = (0:n-1)*(fs/n);     % frequency range
% power = abs(y);
% subplot(2,1,2)       % add first plot in 2 x 1 grid
% plot(f,power)
% xlabel('Frequency')
% ylabel('Power')
% xlim([0 size(f,2)/2])%クリップ(ナイキスト周波数fs/2を中心として対称構造を取る)

tau = 1;%τ
f = -10:0.1:10;%周波数
F = tau*(sin(pi()*f*tau+eps)./(pi()*f*tau+eps));%F(ω)[孤立波]
plot(f,abs(F),"r");
xlabel('角周波数')
ylabel('振幅')
%xgrid();
%xtitle("","freq","Amplitude");
title('フーリエ変換')