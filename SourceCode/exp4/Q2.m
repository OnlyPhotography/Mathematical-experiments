clear all;
%ԭʼͶ�����ֵ
X=[30 20 50;
20 30 35;
16 18 2];
Y=[150;115;64];                  % ԭʼ���ղ�Ʒ
x_total=[250 200 100];           % ԭʼ�ܲ�Ʒ
x_rep = repmat( x_total,3,1);    % ����3�ݣ���չΪ3x3����
A=X./x_rep;                      % ��ֱ������ϵ��
delta_y=[-30;0;36];              % y�ı仯��
current_Y=Y+delta_y;             % ���ڵ�Y
% ��x=(I-A)^-1*y��
current_x_total=(eye(3)-A)\current_Y;
current_x_rep=repmat(current_x_total',3,1);
% �ڼ���ˮƽû��������ߵ������£�����ֱ������ϵ������
% ������ø���Ʒ�������֮��ı仯
current_X=current_x_rep.*A;
