clear all; 
clc; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%VINS画轨迹%%%%%%%%%%%VINS中出来的结果有闭环和非闭环两种情况%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% fidin=fopen('vins_result_no_loop.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来 
% 
% fidin=fopen('vins_result_loop.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal_loop.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来
% 
% plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b-', 'Linewidth', 0.1);
% hold on
% plot3(transformation1(:, 2), transformation1(:, 3), transformation1(:, 4), 'r-', 'Linewidth', 0.1);
% grid on;
% 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORB_SLAM2画图%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
fidin=fopen('KeyFrameTrajectory.txt'); % 打开test2.txt文件             
fidout=fopen('trajectory_deal.txt','w'); % 创建MKMATLAB.txt文件 
while ~feof(fidin) % 判断是否为文件末尾               
	tline=fgetl(fidin); % 从文件读行   
	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
		continue % 如果是非数字继续下一次循环 
	end 
end 
fclose(fidout); 
transformation=importdata('trajectory_deal.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来 

plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b*-', 'Linewidth', 1); 
%plot(transformation(:, 1), transformation(:, 2),'b*-', 'Linewidth', 1); 
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%一元二次方程仿真%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%画RGBD-t-x(t-y//t-z与此类似)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('KeyFrameTrajectory_ORB-SLAM-RGBD.txt'); % 打开test2.txt文件             
% fidout=fopen('trajectory_deal.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来 
% 
% %plot3(transformation(:, 2), transformation(:, 3), transformation(:, 4), 'b*-', 'Linewidth', 1); 
% plot(transformation(:, 1)-1562403382.188312, transformation(:,2),'b*-', 'Linewidth', 1); %减去的一个值是为了让橫轴起始坐标为0
% grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%vins两图比较（t-x）/(t-y)/(t-z)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('vins_result_no_loop第二次.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来 
% 
% fidin=fopen('vins_result_loop第二次.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal_loop.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来
% 
% plot(transformation(:, 1)-1562408724132849920, transformation(:, 4),  'b-', 'Linewidth', 0.1);%比较z轴2括号里参数为4 比较x轴2 比较y轴3
% 
% hold on
% plot(transformation1(:, 1)-1562408728611869952, transformation1(:, 4),  'r-', 'Linewidth', 0.1);
% grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%vins两图比较x-z%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fidin=fopen('vins_result_no_loop第二次.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation=importdata('trajectory_deal.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来 
% 
% fidin=fopen('vins_result_loop第二次.txt'); % 打开test2.txt文件
% fidout=fopen('trajectory_deal_loop.txt','w'); % 创建MKMATLAB.txt文件 
% while ~feof(fidin) % 判断是否为文件末尾               
% 	tline=fgetl(fidin); % 从文件读行   
% 	if double(tline(1))>=48&&double(tline(1))<=57 % 判断首字符是否是数值 
% 		fprintf(fidout,'%s\n\n',tline); % 如果是数字行，把此行数据写入文件MKMATLAB.txt 
% 		continue % 如果是非数字继续下一次循环 
% 	end 
% end 
% fclose(fidout); 
% transformation1=importdata('trajectory_deal_loop.txt'); % 将生成的MKMATLAB.txt文件导入工作空间，变量名为MK，实际上它不显示出来
% 
% plot(transformation(:, 2), transformation(:, 4),  'b-', 'Linewidth', 0.1);
% hold on
% plot(transformation1(:, 2), transformation1(:, 4),  'r-', 'Linewidth', 0.1);
% grid on;