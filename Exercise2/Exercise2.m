clc;
clear;

x = input('Chand adad mikhahid vared konid? ');
clc;

disp('Lotfan adad haye morede nazar ra vared konid');
for i=1:x
    A(i) = input('');
end

clc;

%Tabe MySort, dade hara be surate nozuli moratab mikonad
B = MySort(A,x);

%Tabe plot_figure, dade hara plot mikonad
plot_figure(A,B);