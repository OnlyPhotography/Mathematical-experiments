function [pa, pb, Awin, Bwin] = q2_fun(n)
    Awin = 0;
    Bwin = 0;
    for k = 1:n
        counter = 0;
        balls = randperm(12, 7); % �����ȡ7����
        for i = 1:7
            if balls(i) <= 4
                counter = counter + 1; %����������
            end
        end
        %�ж�AӮ����BӮ
        if counter >= 3
            Awin = Awin + 1;
        else
            Bwin = Bwin + 1;
        end
    end
    %��Ƶ�ʽ��Ƹ���
    pa = Awin / n;
    pb = Bwin / n;
end
