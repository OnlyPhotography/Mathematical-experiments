clear all
Y=[6,9;9,14;18,7;];%明文
A=[1,-1,1; 1,1,-1; -1,1,1;];
X = A * Y; %密文
INV_A = inv(A);
K = mod(INV_A,26); %解密密钥
M = mod(K * X,26); %恢复明文
