%% Question 2

% Part a
g = poly([-2,2,-8]);
x = -5:0.01:25;
y = polyval(g,x);
figure(1);
plot(x,y),xlabel('x'),ylabel('g(x)');

% Part b
h = [14,0,0,1,0,-19,0];
p = conv(h,g);
x2 = -1:0.01:10;
y2 = polyval(p,x2);
figure(2);
plot(x2,y2),xlabel('x'),ylabel('g(x)*h(x)');

%% Question 4
B = [-11 12 6 42;-8.1 -4 pi 0;3 -18 0.14 -0.9];

% Part a
b_neg = B(find(B < 0));
display(b_neg);

% Part b
min_sum = sum(min(B));
display(min_sum);

% Part c
new_mat = B(:,[1,end]);
display(new_mat);

%% Question 6
monthly_deposit = invest(25000,0.0425,10);
display(monthly_deposit);

%% Question 8

% r = input("Enter r: ");
% d = input("Enter d: ");
% t = input("Enter t: ");
r = 2;
d = 4;
t = 0.5;

if any([r d t] < 0)
  display("Negative numbers are not accepted")
else
  if d > r
    temp = d;
    d = r;
    r = temp;
    display("The values of d and r were switched as d > r");
  end

  S = pi^2 * (2*r + d) * d;
  W = 0.574 * S * t;

  display(W);
end

%% Question 10

% Remove old departments to avoid incompatible structures error as old may
% have num_labs property.
clearvars("departments");

departments(1) = create_department("Software Engineering", 20, [18,20,13,14,15]);
departments(2) = create_department("Computer Engineering", 24, [11,22,23,24,17]);
departments(3) = create_department("Electrical Engineering", 22, [13,22,23,14,25]);
departments(4) = create_department("Mechanical Engineering", 23, [21,22,20,24,19]);

% Part a
display(departments(1).name);

% Part b
% Note that the nth index is the number of graduates n year(s) ago
% This implies departments(2).num_grads(1) specifies the last year
departments(2).num_grads(1) = departments(2).num_grads(1) * 2;
display(departments(2).num_grads(1));

% Part c
% The order of departments in the excel file is same as that in the
% program. This is important as the indexes will be used.
[labs_data,txt] = xlsread("department_labs.xlsx");

for i = 1:length(departments)
    departments(i).num_labs = labs_data(i);
    display(departments(i));
end

