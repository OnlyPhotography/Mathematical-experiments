function An = GetAn(A)
%GetAn ģ26�����
%
% Syntax: output = GetAn(input)
%
% �������A�������ģ26�������ڵĻ��򷵻���ģ26�����

DA=round(mod(det(A),26));
for x = 1:100
    if mod(x*DA,26)==1
        res=x;
        An=round(mod(inv(A)*det(A)*res,26));
        break;
    end
end
end
