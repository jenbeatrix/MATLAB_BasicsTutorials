% MATLAB Webinar 
% By: Jen Beatrix Maristela
% Reference: mathworks.com

% Topics:
% - Loops and Conditional Statements
% - Switch, Case, Otherwise Expressions
% - Question and Message Dialog Box
% - 2-D Plotting and Live Plotting

%% While loop
% constantly repeats when the condition is true

clear
clc

a = 0;

while a < 5
    a = a+1
    s = a^2; %getting the squares of a
end

disp('Done!')

%% For loop
% Loops repeated for a 'specified' number of times
clear
clc

for n = 1:1:10 % Step by an increment of 1 and display the value
   disp(n)
end

%% Nested Loops
% When a loop is nested inside another loop, 
% the inner loop runs many times inside the outer loop.
clear
clc

a = 0;
for m = 1:5
    for n = 1:5
        a = a+m+n
    end
end
disp('Done')
%% Switch, Case, Otherwise Expressions
% switch case statements evaluates an expression and chooses to execute one 
% of several groups of statements. Each choice is a case.
clear

n = input('Enter a number: '); 

switch n %switch expression
    case -1 %case expression 
        disp('negative one') % statement
    case 0
        disp('zero')
    case 1
        disp('positive one')
    otherwise
        disp('other value')
end

%% If, ElseIf, Else
% if expression, statements, end evaluates an expression, 
% and executes a group of statements when the expression is true.
clear

n = input('Enter a number: '); 

if n == -1 % Logical\Equality
   disp('negative one')
elseif n == 0
   disp('zero')
elseif n == 1
   disp('positive one')
else
   disp('other value')
end
%% Question & Message Dialog Box 

%answer = questdlg(quest,dlgtitle,btn1,btn2,btn3,defbtn) 
answer = questdlg('You have an exam tomorrow. What will you do today?', ...
	'Question', ...
	'Study','Procrastinate','Cram','Cram');

% Handle response
switch answer 
    
    case 'Study' 
        message1 = 'Congratulations. You got the highest score in the exam!'; 
        msgbox(message1,'Passed')  %msgbox('certain message','title in string/char')
        disp(message1) 
    case 'Procrastinate'
        message2 = 'You failed the exam.';
        msgbox(message2,'Failed')
        disp(message2)
    case 'Cram'
        message3 = 'You barely passed the exam.';
        msgbox(message3,'Passed')
        disp(message3)
end

%% 2-D Plotting
clear
%plot command
x = linspace(-2*pi,2*pi); %Generate linearly spaced vector
y = sin(x);
plot(x,y)
xlabel('X')
ylabel('Y')
title('Y = sin(X)')

%% Stem Plotting
clear
x = linspace(-2*pi,2*pi);
y = sin(x);
stem(x,y)
xlabel('X')
ylabel('Y')
title('Y = sin[X]')

%% Sub Plotting

%subplot(row,column,position)
clear
subplot(2,1,1);
x = linspace(-2*pi,2*pi);
y1 = sin(x);
plot(x,y1)
xlabel('X')
ylabel('Y')
title('Y = sin(X)')

subplot(2,1,2);
y2 = sin(2*x);
plot(x,y2)
xlabel('X')
ylabel('Y')
title('Y = sin(5*X)')

%% Plotting Two Plots In the Same Graph

clear
x = linspace(-2*pi,2*pi);
y1 = sin(x);
plot(x,y1)
xlabel('X')
ylabel('Y')
title('Y = sin(X)')

hold on

y2 = sin(2*x);
plot(x,y2)
xlabel('X')
ylabel('Y')
title('Y = sin(5*X)')

%% Live Plotting
% Wait until the plot is finished before closing the figure

% Note: If it takes too long, click the command window
% and press Ctrl+c to terminate the operation.

clear
i = 1;
for x = linspace(1,5) 
    y(i) = sin(x);
    plot(y(:));
    xlabel('X')
    ylabel('Y')
    title('Y = sin(X)')
    drawnow % updates figures
    i = i+1;
end

%% Live Plotting Multiple Plots
% Wait until the plot is finished before closing the figure

% Note: If it takes too long, click the command window
% and press Ctrl+c to terminate the operation.

clear
i = 1;
for x = linspace(1,5)
    subplot(2,1,1);
    y(i) = sin(x);
    plot(y(:),'r-');
    xlabel('X')
    ylabel('Y')
    title('Y = sin(X)')
    
    subplot(2,1,2);
    y2(i) = sin(2*x);
    plot(y2(:),'b--');
    xlabel('X')
    ylabel('Y')
    title('Y = sin(2X)')
    
    drawnow % updates figures
    i = i+1;
end

%% Live Plotting Multiple Plots In the Same Figure
% Wait until the plot is finished before closing the figure

% Note: If it takes too long, click the command window
% and press Ctrl+c to terminate the operation.

clear
i = 1;
for x = linspace(1,5)
    y(i) = sin(x);
    plot(y(:),'r.');
    xlabel('X')
    ylabel('Y')
    title('Y = sin(X) & sin(2X)')
    drawnow
    
    hold on
    
    y2(i) = sin(2*x);
    plot(y2(:),'b.');
    drawnow % updates figures
    
    i = i+1;
end


