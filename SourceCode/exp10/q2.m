clear all; clc;
%����10^i�ε����ؿ���ʵ��
% pa=zeros(1,7);
% pb=zeros(1,7);
% Awin=zeros(1,7);
% Bwin=zeros(1,7);
for i = 1:7
    [pa(i), pb(i), Awin(i), Bwin(i)] = q2_fun(10^i);
end

% ��ʵ���������txt
outputData = [pa; pb; Awin; Bwin];

save('���ؿ���ʵ��ڶ�����.txt', 'outputData', '-ascii')