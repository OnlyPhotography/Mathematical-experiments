function M = GetM(K,C)
% GetM - ����C=K*M��ʽ����K C��M
% 
% Syntax: res = GetM(n,C,M)  
% 
% ����resΪM����nΪK���ĸ����ֵ����ȡֵ��C�����ģ�M������

Kn=GetAn(K);
M=Kn*C;
end