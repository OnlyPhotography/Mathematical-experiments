function laout(A,m,n)
%����latex��ʽ���
%����A Ϊ����,m,n�ֱ�Ϊ��������,���m*n����A �ĳ���,
%��tex�л��ÿո����
clc
fprintf('\n')
A=A(:);
len=length(A);
for i=1:m
    for j=1:n
        pos=(i-1)*n+j;
        if pos<=len
            if j==n
                disp([num2str(A(pos)),'\\ \hline']);
            else
                fprintf('%d &',A(pos));
            end
        else
            if j==n
                disp('\\\hline');
            else
                fprintf('&');
            end
        end
    end
end
end
