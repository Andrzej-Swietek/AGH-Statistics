clc;clear;

a = input("A: ")
b = input("B: ")

%% Conditions 

if( a ~= 5 || b < 10 ) 
    a = 5;
    b = b + 5;
elseif(a < 0 || b < 0)
    a = 0;
else
    disp("ok")
end

disp(["Zmienna a", num2str(a)])
disp(["Zmienna b", num2str(b)])

% lub mozna ( ( a~=5 ) | ( b < 10 ) ) & ( 3 > 2 ) ===> pojedynczy dynks


%% For loop

for i=1:100
    num = 1/(i+1)
end

%% While loop
i = 0
while ( i < 5 )
    disp(i)
end
