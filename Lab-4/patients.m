clc; clear;

%% Loading data about patients 
% Age Gender Height
load patients

% T2 = readtable("patients.dat"); % direct data import to table


%% Creating table - with selected columns
T1 = table(Gender, Smoker, Height, Weight);
disp(T1)

%% Accesing given cells

T1(1:5, 1) % first 5 rows - colun No. 1

T1(5:10, 'Gender') 

T1(1:5,{'Gender','Height'})

T1.Weight(1:5)