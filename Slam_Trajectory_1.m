clear all; 
clc; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%VINS���켣%%%%%%%%%%%VINS�г����Ľ���бջ��ͷǱջ��������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% fidin=fopen('vins_result_no_loop.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ���� 
% 
% fidin=fopen('vins_result_loop.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal_loop.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ����
% 
% plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b-', 'Linewidth', 0.1);
% hold on
% plot3(transformation1(:, 2), transformation1(:, 3), transformation1(:, 4), 'r-', 'Linewidth', 0.1);
% grid on;
% 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORB_SLAM2��ͼ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fidin=fopen('KeyFrameTrajectory.txt'); % ��test2.txt�ļ�             
fidout=fopen('trajectory_deal.txt','w'); % ����MKMATLAB.txt�ļ� 
while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
	tline=fgetl(fidin); % ���ļ�����   
	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
		continue % ����Ƿ����ּ�����һ��ѭ�� 
	end 
end 
fclose(fidout); 
transformation=importdata('trajectory_deal.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ���� 

plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b*-', 'Linewidth', 1); 
%plot(transformation(:, 1), transformation(:, 2),'b*-', 'Linewidth', 1); 
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%һԪ���η��̷���%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% beta=pi/3;
% x=0:0.1:20;
% 
% l=15;
% gamma=1;
% sigma0=1;
% tg=tan(beta);
% cs=cos(beta);
% y=x*tg-(gamma*x*l-gamma*x.^2)/(2*sigma0*cs);
% %w=x*x;%-((gamma)*x*(l-x));%/(2*sigma0*cs);gamma*x*l
% %y=x.^2;%-(gamma*x*(l-x))/(2*sigma0*cs);
% plot(x,y);
% grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��RGBD-t-x(t-y//t-z�������)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('KeyFrameTrajectory_ORB-SLAM-RGBD.txt'); % ��test2.txt�ļ�             
% fidout=fopen('trajectory_deal.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ���� 
% 
% %plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b*-', 'Linewidth', 1); 
% plot(transformation(:, 1)-1562403382.188312, transformation(:,2),'b*-', 'Linewidth', 1); %��ȥ��һ��ֵ��Ϊ���ÙM����ʼ����Ϊ0
% grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%vins��ͼ�Ƚϣ�t-x��/(t-y)/(t-z)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('vins_result_no_loop�ڶ���.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ���� 
% 
% fidin=fopen('vins_result_loop�ڶ���.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal_loop.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ����
% 
% plot(transformation(:, 1)-1562408724132849920, transformation(:, 4),  'b-', 'Linewidth', 0.1);%�Ƚ�z��2���������Ϊ4 �Ƚ�x��2 �Ƚ�y��3
% 
% hold on
% plot(transformation1(:, 1)-1562408728611869952, transformation1(:, 4),  'r-', 'Linewidth', 0.1);
% grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%vins��ͼ�Ƚ�x-z%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('vins_result_no_loop�ڶ���.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ���� 
% 
% fidin=fopen('vins_result_loop�ڶ���.txt'); % ��test2.txt�ļ�
% fidout=fopen('trajectory_deal_loop.txt','w'); % ����MKMATLAB.txt�ļ� 
% while ~feof(fidin) % �ж��Ƿ�Ϊ�ļ�ĩβ               
% 	tline=fgetl(fidin); % ���ļ�����   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % �ж����ַ��Ƿ�����ֵ 
% 		fprintf(fidout,'%s\n\n',tline); % ����������У��Ѵ�������д���ļ�MKMATLAB.txt 
% 		continue % ����Ƿ����ּ�����һ��ѭ�� 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % �����ɵ�MKMATLAB.txt�ļ����빤���ռ䣬������ΪMK��ʵ����������ʾ����
% 
% plot(transformation(:, 2), transformation(:, 4),  'b-', 'Linewidth', 0.1);
% hold on
% plot(transformation1(:, 2), transformation1(:, 4),  'r-', 'Linewidth', 0.1);
% grid on;