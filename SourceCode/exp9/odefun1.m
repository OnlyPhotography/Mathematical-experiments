function dy= odefun1(x,y)
  dy = zeros(2,1); % a column vector
  dy(1)= y(2); %��һ�������ұ�
  dy(2)= -y(1)-sin(2*x); %�ڶ��������ұ�