function KochSnow(length, k)
    %KochSnow - KochSnow����ͼ
    %
    % Syntax: KochSnow(length,k)
    %
    % �������lengthΪ�����α߳���kΪ��������

    % ���λ������ε�������
    for myedge = 1:3

        switch myedge
            case 1% �����εĵ�һ���ߵ�����յ�
                p = [0, 0; 0.5 * length, sqrt(3) / 2 * length];
            case 2% �����εĵڶ����ߵ�����յ�
                p = [0.5 * length, sqrt(3) / 2 * length; length, 0];
            case 3% �����εĵ������ߵ�����յ�
                p = [length, 0; 0, 0];
        end

        n = 1; %����߶ε���������ʼֵΪ1
        A = [cos(pi / 3), -sin(pi / 3); sin(pi / 3), cos(pi / 3)]; %���ڼ����µĽ��

        for s = 1:k%ʵ�ֵ������̣��������еĽ�������
            j = 0; %
            %���¸����߶������������꣬�������������֮�����ӵ�����
            %�������꣬���ҽ���Щ������갴�������ʱ�ŵ�r��
            for i = 1:n%ÿ���߼���һ��
                q1 = p(i, :); %Ŀǰ�߶ε��������
                q2 = p(i + 1, :); %Ŀǰ�߶ε��յ�����
                d = (q2 - q1) / 3; %
                j = j + 1; r(j, :) = q1; %ԭ������r
                j = j + 1; r(j, :) = q1 + d; %��1�����r
                j = j + 1; r(j, :) = q1 + d + d * A'; %��2�����r
                j = j + 1; r(j, :) = q1 + 2 * d; %��3�����r
            end %ԭ�յ���Ϊ�����߶ε���㣬�ڵ��������߶�ʱ����r

            n = 4 * n; %ȫ���߶ε���һ�κ��߶�������4
            clear p%���p ��ע�⣺���һ���յ�q2����r��
            p = [r; q2]; %����װ�ر��ε������ȫ�����
        end

        clear r
        % ������ߵĽ������
        switch myedge
            case 1
                myedge_1 = p;
            case 2
                myedge_2 = p;
            case 3
                myedge_3 = p;
        end

    end

    wholeEdge = [myedge_1; myedge_2; myedge_3];
    plot(wholeEdge(:, 1), wholeEdge(:, 2), 'LineWidth', 2, 'Color', '#3a539b')%��ʾ����������ͼ
    ax = gca;
    ax.Title.String = ['Koch ѩ�� ����', num2str(k), '��'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName = '΢���ź�';
    ax.YAxis.Visible =  'off'; % ����y�᲻�ɼ�
    ax.XAxis.Visible =  'off'; % Ĭ������ on �����ɼ�
    axis equal%��������ͬ����
end
