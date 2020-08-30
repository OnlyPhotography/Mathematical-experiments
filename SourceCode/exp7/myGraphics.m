function myGraphics(mylength, deflection_angle, times, mostWidth)
    %myGraphics - Description
    %
    % Syntax: myGraphics(mylength,deflection_angle,times,mostWidth)
    %
    % mylength:��ʼ����
    % deflection_angle��ƫת��
    % times����������
    % mostWidth����ֵ��߿�

    input_origin = i;
    input_ending = mylength * i;
    newOrigin = [];
    newEnding = [];
    origin = [input_origin];
    ending = [input_ending];

    % ==== ��ʼ���� ====
    for k = 1:times
        newOrigin = [];
        newEnding = [];

        for j = 1:length(origin)
            [p, q] = eachNode(deflection_angle, origin(j), ending(j), k, mostWidth, times);
            newOrigin = [newOrigin, p];
            newEnding = [newEnding, q];
        end

        origin = newOrigin;
        ending = newEnding;
    end

    axis equal%��������ͬ����
    ax = gca;
    ax.Title.String = ['���ҵ�ͼ�Ρ� ƫת�ǣ�',num2str(rad2deg(deflection_angle)), '��   ����', num2str(times), '��'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName = '΢���ź�';
    ax.YAxis.Visible =  'off'; % ����y�᲻�ɼ�
    ax.XAxis.Visible =  'off'; % ����x�᲻�ɼ�
end
