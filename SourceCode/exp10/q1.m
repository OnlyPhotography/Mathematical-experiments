%����10^i�ε����ؿ���ʵ��
for i = 1:7
    % �зŻص����
    [a_back(i), b_back(i), c_back(i)] = q1_fun(10^i, 'back');
    % �޷Żص����
    [a_noback(i), b_noback(i), c_noback(i)] = q1_fun(10^i, 'noback');
end

% ��ʵ���������txt
outputData = [a_back; b_back; c_back; a_noback; b_noback; c_noback]
save('���ؿ���ʵ���һ����.txt', 'outputData', '-ascii')
