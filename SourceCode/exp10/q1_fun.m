function [pa, pb, pc] = q1_fun(n, type)
    % type=='back' -> �зŻ�
    % type=='noback' -> �޷Ż�
    maxRange = [12, 12, 12]; %Ĭ��Ϊ�зŻ�
    if strcmp(type, 'noback')
        maxRange = [12, 11, 10];    % �޸ĳ���Χ
    end
    pa = 0; pb = 0; pc = 0;
    fa = 0; fb = 0; fc = 0;
    total_win = 0;
    for i = 1:n
        Aball = randi([1, maxRange(1)]); % 1-4Ϊ��������Ϊ����
        if Aball <= 4% A���а���
            fa = fa + 1;
            total_win = total_win + 1;
        else
            Bball = randi([1, maxRange(2)]); % 1-4Ϊ��������Ϊ����
            if Bball <= 4% B���а���
                fb = fb + 1;
                total_win = total_win + 1;
            else
                Cball = randi([1, maxRange(3)]); % 1-4Ϊ��������Ϊ����
                if Cball <= 4% C���а���
                    fc = fc + 1;
                    total_win = total_win + 1;
                end
            end
        end
    end
    pa = fa / total_win; % A���а���ĸ���
    pb = fb / total_win; % B���а���ĸ���
    pc = fc / total_win; % C���а���ĸ���
end
