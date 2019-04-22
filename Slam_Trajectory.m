clear all; 
clc; 


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
grid on;
