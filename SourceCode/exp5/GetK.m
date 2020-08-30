function res = GetK(n,C,M,type)
% GetK - ����C=K*M��ʽ����C M�������K
%
% Syntax: res = GetK(n,C,M)
%
% ����resΪK����nΪK���ĸ����ֵ����ȡֵ��C�����ģ�M������

flag=0;
if type=='KM'
    for a = 1:n
        for b = 1:n
            for c = 1:n
                for d = 1:n
                    K=[a,b;c,d];
                    L=mod(K*M,26);
                    if C==L
                        flag=1;
                        res=K;
                        break
                    end
                end
                if flag==1
                    break;
                end
            end
            if flag==1
                break;
            end
        end
        if flag==1
            break;
        end
    end
elseif type=='MK'
    for a = 1:n
        for b = 1:n
            for c = 1:n
                for d = 1:n
                    K=[a,b;c,d];
                    L=mod(M*K,26);
                    if C==L
                        flag=1;
                        res=K;
                        break
                    end
                end
                if flag==1
                    break;
                end
            end
            if flag==1
                break;
            end
        end
        if flag==1
            break;
        end
    end
end
end
