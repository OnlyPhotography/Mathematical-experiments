function [z, A] = frat3(z, A, n);
    N = 10; % ����������
    s = 0.7; % scale
    Br = [pi / 100; -pi / 4]; % ƫת��

    if n > N% ������������
        return
    end

    k = 1;

    if n == 1; % ��1�Σ�������z=9i
        plot([z, z + exp(i * A)],  'linewidth', 3 / N * (N - n + 1)); pause(1)
        hold on
        z = z + exp(i * A);
        [z, A] = frat3(z, A, n + 1); % ��2�Σ�����֧
    else

        while k < 3% k��1����֧,k=2����֧
            A = A + Br(k);
            leng = s^(n - 1);
            plot([z, z + leng * exp(i * A)],  'linewidth', 3 / N * (N - n + 1));
%             pause(0.01)
            z = z + leng * exp(i * A);
            [z, A] = frat3(z, A, n + 1); % ��n+1�Σ�����֧
            A = A + pi;
            z = z + leng * exp(i * A);
            A = A + pi - Br(k);
            k = k + 1;
        end

    end

end
