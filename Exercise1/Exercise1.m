clc;
clear;

%first matrix
x = input('Tedade satrhaye matrise aval ra vared konid : ');
y = input('Tedade sotunhaye matrise aval ra vared konid : ');
clc;

disp('Deraye haye matrise aval ra vared konid :');
for i=1:x
    for j=1:y
        z = ['satr ' , num2str(i) , ' - sotun ' , num2str(j) , ' : '];
        A(i,j) = input(z);
    end
end

clc;

%second matrix
u = input('Tedade satrhaye matrise dovom ra vared konid : ');
v = input('Tedade sotunhaye matrise dovom ra vared konid : ');
clc;

disp('Deraye haye matrise dovom ra vared konid :');
for i=1:u
    for j=1:v
        z = ['satr ' , num2str(i) , ' - sotun ' , num2str(j) , ' : '];
        B(i,j) = input(z);
    end
end

clc;

disp('Lotfan gozine morede nazar ra entekhab konid :');
disp('A) Jame 2 matris');
disp('B) Tafriqe 2 matris');
disp('C) Zarbe deraye be deraye 2 matris');
disp('D) Zarbe 2 matris');
disp('E) Zarbe 2 matris ba estefade az halqe for');
disp('F) Makuse matris');
disp('G) Determinane matris');
disp('H) Makuse matris bedune estefade az dasture inv');
disp('J) Jostojuye adade <9> dar matris');


switch input('' , 's')
    case {'a' , 'A'}
        %jam
        clc;
        if x==u && y==v %tedade satrha va sotunha barabar bashand
            C = A + B;
            disp('Result : ');
            disp(C);
        else
            disp('Darajeye matris ha barabar nistand!');
        end
        
    case {'b' , 'B'}
        %tafriq
        clc;
        if x==u && y==v %tedade satrha va sotunha barabar bashand
            C = A - B;
            disp('Result : ');
            disp(C);
        else
            disp('Darajeye matris ha barabar nistand!');
        end
        
    case {'c' , 'C'}
        %zarbe deraye be deraye
        clc;
        if x==u && y==v %tedade satrha va sotunha barabar bashand
            C = A .* B;
            disp('Result : ');
            disp(C);
        else
            disp('Darajeye matris ha barabar nistand!');
        end
        
    case {'d' , 'D'}
        %zarb
        clc;
        if y==u %tedade sotune avali ba tedade satre dovomi barabar bashad
            C = A * B;
            disp('Result : ');
            disp(C);
        else
            disp('Darajeye matris ha barabar nistand!');
        end
        
    case {'e' , 'E'}
        %zarb ba halqe for
        clc;
        if y==u %tedade sotune avali ba tedade satre dovomi barabar bashad
            for i=1:x
                for j=1:v
                    result = 0;
                    for k=1:y
                        result = result + A(i,k) * B(k,j);
                    end
                    C(i,j) = result;
                end
            end
            
            disp('Result : ');
            disp(C);
            
        else
            disp('Darajeye matris ha barabar nistand!');
        end
        
    case {'f' , 'F'}
        %makus
        clc;
        disp('1) Makuse matrise aval');
        disp('2) Makuse matrise dovom');
        
        switch input('')
            case 1
                %makuse A
                clc;
                disp('Result : ');
                disp(inv(A));
                
            case 2
                %makuse B
                clc;
                disp('Result : ');
                disp(inv(B));
                
            otherwise
                disp('Wrong character');
        end
        
    case {'g' , 'G'}
        %determian
        clc;
        disp('1) Determinane matrise aval');
        disp('2) Determinane matrise dovom');
        
        switch input('')
            case 1
                %determinane A
                clc;
                disp('Result : ');
                disp(det(A));
                
            case 2
                %determinane B
                clc;
                disp('Result : ');
                disp(det(B));
                
            otherwise
                disp('Wrong character');
        end
        
    case {'h' , 'H'}
        %makus bedune dasture inv
        clc;
        disp('1) Makuse matrise aval');
        disp('2) Makuse matrise dovom');
        
        switch input('')
            case 1
                %makuse A
                clc;
                
                %matrise 2*2
                if x==2 && y==2
                    result = 1/det(A) .* [A(2,2) -1*A(1,2) ; -1*A(2,1) A(1,1)];
                    disp('Result : ');
                    disp(result);
                    
                else
                    disp('Cant calculate!');
                end
                
            case 2
                %makuse B
                clc;
                
                %matrise 2*2
                if u==2 && v==2
                    result = 1/det(B) .* [B(2,2) -1*B(1,2) ; -1*B(2,1) B(1,1)];
                    disp('Result : ');
                    disp(result);
                    
                else
                    disp('Cant calculate!');
                end
                
            otherwise
                disp('Wrong character');
        end
        
    case {'j' , 'J'}
        %jostojuye adade 9
        clc;
        disp('1) Jostoju dar matrise aval');
        disp('2) Jostoju dar matrise dovom');
        
        switch input('')
            case 1
                %jostoju dar A
                clc;
                
                find = false;
                for i=1:x
                    for j=1:y
                        if A(i,j) == 9
                            row = i;
                            col = j;
                            find = true;
                            break;
                        end
                    end
                    
                    if find
                        break;
                    end
                end
                
                if find
                    answer = ['Adade 9 dar satr ' , num2str(row) , ' sotun ' , num2str(col) , ' peyda shod'];
                    disp(answer);
                else
                    disp('Adade morede nazar dar matris peyda nashod!');
                end
                
            case 2
                %jostoju dar B
                clc;
                
                find = false;
                for i=1:u
                    for j=1:v
                        if B(i,j) == 9
                            row = i;
                            col = j;A
                            find = true;
                            break;
                        end
                    end
                    
                    if find
                        break;
                    end
                end
                
                if find
                    answer = ['Adade 9 dar satr ' , num2str(row) , ' sotun ' , num2str(col) , ' peyda shod'];
                    disp(answer);
                else
                    disp('Adade morede nazar dar matris peyda nashod!');
                end
                
            otherwise
                disp('Wrong character');
        end
        
    otherwise
        disp('Wrong character');
end