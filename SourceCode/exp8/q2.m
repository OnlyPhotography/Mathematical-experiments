% ԭʼ��������
x = [0, 3, 5, 7, 9, 11, 12, 13, 14, 15];
y = [0, 1.2, 1.7, 2, 2.1, 2, 1.8, 1.2, 1, 1.6];

xi = [0:0.1:15];
% ���Բ�ֵ
y_linear = interp1(x, y, xi,  'linear');
figure(1)
plot(x, y,  'x', xi, y_linear)
legend('��������',  '���Բ�ֵ')
axis equal  %��������ͬ����
% ���� y_linear ���ݵ� �����Բ�ֵ.txt��
y_linear_Data = reshape([y_linear, zeros(1, 160 - length(y_linear))], [10, 16])';
save('���Բ�ֵ.txt',  'y_linear_Data',  '-ascii')

% ����������ֵ
y_spline = interp1(x, y, xi, 'spline');
figure(2)
plot(x, y, 'x', xi, y_spline)
legend('��������','����������ֵ')
axis equal  %��������ͬ����
% ���� y_spline ���ݵ� ������������ֵ.txt��
y_spline_Data = reshape([y_linear, zeros(1, 160 - length(y_linear))], [10, 16])';
save('����������ֵ.txt',  'y_spline_Data',  '-ascii')
