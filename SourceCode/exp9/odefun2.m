function dy = odefun2(t, y)
    dy = zeros(2, 1); % a column vector
    dy(1) = y(2); %��һ�������ұ�
    dy(2) = -0.01 * y(2) - sin(y(1)); %�ڶ��������ұ�
