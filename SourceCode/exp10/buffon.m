function [p, pi_m] = buffon(d, l, n)%����ƽ���߼��d,�볤��l,�������n;����ཻ����p,pi�Ľ���ֵ pi_m

    m = 0; %����ཻ����

    for k = l:n

        y = unifrnd(0, d / 2); %����������� D �е��������

        x = unifrnd(0, pi); %����������� D �е�ĺ�����

        if y <= l / 2 * sin(x)%�ж��¼� A �Ƿ���

            m = m + 1; %��¼ A �����Ĵ���

        else

        end

    end

    p = m / n; %���� A ������Ƶ��

    pi_m = 2 * l / (d * p); %���� pi �Ľ���ֵ
