function tree(height, times)
    %tree - ����
    %
    % Syntax: tree(��ʼ�߶�,��������)
    %
    % ��һ�������߶Σ���������֮һ�ֵ㴦�������Ϸ���һ���߶Σ���������֮���ֵ㴦�������Ϸ���һ���߶Σ��߶γ��ȶ���ԭ��������֮һ���нǶ�Ϊ30��

    [ori, z] = eachTree(0, height * i, times, 0);
    new_ori = [];
    new_z = [];

    for k = 1:times

        for j = 1:length(ori)
            [p, q] = eachTree(ori(j), z(j), times, k);
            new_ori = cat(2, new_ori, p);
            new_z = cat(2, new_z, q);
        end

        ori = new_ori;
        z = new_z;
    end
    plot(x,y,'linewidth',
    )
    ax = gca;
    ax.Title.String = ['ģ����ľ���ݷ���ͼ ����', num2str(times),  '��'];
    ax.Title.FontWeight =  'normal';
    ax.Title.FontSize = 12;
    ax.Title.FontName =  '΢���ź�';
    ax.YAxis.Visible =  'off'; % ����y�᲻�ɼ�
    ax.XAxis.Visible =  'off'; % ����x�᲻�ɼ�
end