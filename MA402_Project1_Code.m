% % Andrea Stancescu, Jenna Varnell, Omry Brewster
% MA 402 Project 1 
% 3-11-2022
% MATLAB .mlx file with integrated text and code


%% part a - FIGURE 1

theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];


ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)];

[t, y] = ode45(ddt, [0 30], x0);

figure;
hold on 
plot(t, y(:,1), 'b--', 'LineWidth', 1.5)
plot(t, y(:,2), 'g', 'LineWidth', 1.5)
plot(t, y(:,3), 'c--', 'LineWidth', 1.5)
plot(t, y(:,4), 'r', 'LineWidth', 1.5)
title('Concentrations over time','Fontsize',15)
xlabel('Time','FontSize', 15)
ylabel('Concentrations','FontSize',15)
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction','FontSize',15) 
hold off



%% part b - FIGURE 2


% step size h = 0.1
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)]';

h1 = 0.1;
y1 = zeros((30/h1), 4);
y1(1, :) = x0';
for i=1:((30/h1) - 1)
   y1(i+1, :) =  y1(i,:) + h1 * (ddt(i*h1, y1(i,:)));
end

figure;
hold on 
plot(0:h1:30-h1, y1(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,2), 'g', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,4), 'r', 'LineWidth', 1.5)




% the true plots found with ode45
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];


ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)];

[t, y] = ode45(ddt, [0 30], x0);


plot(t, y(:,1), 'k--', 'LineWidth', 0.5)
plot(t, y(:,2), 'k', 'LineWidth', 0.5)
plot(t, y(:,3), 'k--', 'LineWidth', 0.5)
plot(t, y(:,4), 'k', 'LineWidth', 0.5)


title('Concentrations over time with step size of 0.1','FontSize',15)
xlabel('Time','Fontsize',15)
ylabel('Concentrations','FontSize',15)
legend('E: Estimated Enzyme', 'S: Estimated Substrate', ...
    'ES/C: Estimated Enzyme-substrate compound', 'P: Estimated Product of the reaction', 'FontSize',10) 


hold off



%% part b - FIGURE 3
% step size h = 1
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)]';

h2 = 1;
y2 = zeros((30/h2), 4);
y2(1, :) = x0';
for i=1:((30/h2) - 1)
   y2(i+1, :) =  y2(i,:) + h2 * (ddt(i*h2, y2(i,:)));
end

figure;
hold on 
plot(0:h2:30-h2, y2(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,2), 'g', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,4), 'r', 'LineWidth', 1.5)




% the true plots found with ode45
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];


ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)];

[t, y] = ode45(ddt, [0 30], x0);


plot(t, y(:,1), 'k--', 'LineWidth', 0.5)
plot(t, y(:,2), 'k', 'LineWidth', 0.5)
plot(t, y(:,3), 'k--', 'LineWidth', 0.5)
plot(t, y(:,4), 'k', 'LineWidth', 0.5)


title('Concentrations over time with step size of 1','FontSize',15)
xlabel('Time','Fontsize',15)
ylabel('Concentrations','FontSize',15)
legend('E: Estimated Enzyme', 'S: Estimated Substrate', ...
    'ES/C: Estimated Enzyme-substrate compound', 'P: Estimated Product of the reaction', 'FontSize',10) 


hold off



%% part b - FIGURE 4
% step size h = 2
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)]';

h3 = 2;
y3 = zeros((30/h3), 4);
y3(1, :) = x0';
for i=1:((30/h3) - 1)
   y3(i+1, :) =  y3(i,:) + h3 * (ddt(i*h3, y3(i,:)));
end

figure;
hold on 
plot(0:h3:30-h3, y3(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,2), 'g', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,4), 'r', 'LineWidth', 1.5)




% the true plots found with ode45
theta1 = 10;
theta2 = 1e-2;
theta3 = 1e-1;
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];


ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
    (-1*theta1*x(1)*x(2)) + (theta2*x(3));
    (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
    theta3*x(3)];

[t, y] = ode45(ddt, [0 30], x0);


plot(t, y(:,1), 'k--', 'LineWidth', 0.5)
plot(t, y(:,2), 'k', 'LineWidth', 0.5)
plot(t, y(:,3), 'k--', 'LineWidth', 0.5)
plot(t, y(:,4), 'k', 'LineWidth', 0.5)


axis([0 30 0 0.05]);
title('Concentrations over time with step size of 2','FontSize',15)
xlabel('Time','Fontsize',15)
ylabel('Concentrations','FontSize',15)
legend('E: Estimated Enzyme', 'S: Estimated Substrate', ...
    'ES/C: Estimated Enzyme-substrate compound', 'P: Estimated Product of the reaction', 'FontSize',10) 


hold off




%% FIGURE 5


figure1=figure('Position', [1000, 1000, 1000, 1000])

subplot(2,2,1);
hold on 
plot(t, y(:,1), 'b--', 'LineWidth', 1.5)
plot(t, y(:,2), 'g', 'LineWidth', 1.5)
plot(t, y(:,3), 'c--', 'LineWidth', 1.5)
plot(t, y(:,4), 'r', 'LineWidth', 1.5)
title('Concentrations over time')
xlabel('Time')
ylabel('Concentrations')
%legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off

subplot(2,2,2);
hold on 
plot(0:h1:30-h1, y1(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,2), 'g', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h1:30-h1, y1(:,4), 'r', 'LineWidth', 1.5)
title('Concentrations over time with step size of 0.1')
xlabel('Time')
ylabel('Concentrations')
%legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction')
hold off

subplot(2,2,3);
hold on 
plot(0:h2:30-h2, y2(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,2), 'g', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h2:30-h2, y2(:,4), 'r', 'LineWidth', 1.5)
title('Concentrations over time with step size of 1')
xlabel('Time')
ylabel('Concentrations')
%legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction')
hold off

subplot(2,2,4);
hold on 
plot(0:h3:30-h3, y3(:,1), 'b--', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,2), 'g', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,3), 'c--', 'LineWidth', 1.5)
plot(0:h3:30-h3, y3(:,4), 'r', 'LineWidth', 1.5)
axis([0 30 0 0.05])

title('Concentrations over time with step size of 2')
xlabel('Time')
ylabel('Concentrations')

% fig = gcf;
% fig.Position(3) = fig.Position(3) + 400;
hold off



%% part c - FIGURE 6

e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    [t, y] = ode45(ddt, [0 30], x0);

    plot(t, y(:,1), 'b--')
    plot(t, y(:,2), 'g')
    plot(t, y(:,3), 'c--')
    plot(t, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients','FontSize',15)
xlabel('Time','FontSize',15)
ylabel('Concentrations','FontSize',15)
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction','FontSize',15) 
hold off



%% part d

e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    [t, y] = ode45(ddt, [0 30], x0);

    lastproduct(numtrials) = y(end,4);
end 

estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)

stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)



%% part e - FIGURE 7

% step size h = 2
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    
    h = 2;
    y = zeros((30/h), 4);
    y(1, :) = x0';
    for i=1:((30/h) - 1)
        y(i+1, :) =  y(i,:) + h * (ddt(i*h, y(i,:))');
    end

 
    lastproduct(numtrials) = y(end,4);
    
    plot(0:h:30-h, y(:,1), 'b--')
    plot(0:h:30-h, y(:,2), 'g')
    plot(0:h:30-h, y(:,3), 'c--')
    plot(0:h:30-h, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients and step size of 2')
xlabel('Time')
ylabel('Concentrations')
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off

estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)
stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)


%% part e - FIGURE 8

% step size h = 1
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    
    h = 1;
    y = zeros((30/h), 4);
    y(1, :) = x0';
    for i=1:((30/h) - 1)
        y(i+1, :) =  y(i,:) + h * (ddt(i*h, y(i,:))');
    end

 
    lastproduct(numtrials) = y(end,4);
    
    plot(0:h:30-h, y(:,1), 'b--')
    plot(0:h:30-h, y(:,2), 'g')
    plot(0:h:30-h, y(:,3), 'c--')
    plot(0:h:30-h, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients and step size of 1')
xlabel('Time')
ylabel('Concentrations')
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off
                        
estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)
stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)




%% part e - FIGURE 9

% step size h = 0.1
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    
    h = 0.1;
    y = zeros((30/h), 4);
    y(1, :) = x0';
    for i=1:((30/h) - 1)
        y(i+1, :) =  y(i,:) + h * (ddt(i*h, y(i,:))');
    end

 
    lastproduct(numtrials) = y(end,4);
    
    plot(0:h:30-h, y(:,1), 'b--')
    plot(0:h:30-h, y(:,2), 'g')
    plot(0:h:30-h, y(:,3), 'c--')
    plot(0:h:30-h, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients and step size of 0.1')
xlabel('Time')
ylabel('Concentrations')
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off

estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)
stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)



%% step size h = 1.5 - FIGURE 10
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    
    h = 1.5;
    y = zeros((30/h), 4);
    y(1, :) = x0';
    for i=1:((30/h) - 1)
        y(i+1, :) =  y(i,:) + h * (ddt(i*h, y(i,:))');
    end

 
    lastproduct(numtrials) = y(end,4);
    
    plot(0:h:30-h, y(:,1), 'b--')
    plot(0:h:30-h, y(:,2), 'g')
    plot(0:h:30-h, y(:,3), 'c--')
    plot(0:h:30-h, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients and step size of 1.5')
xlabel('Time')
ylabel('Concentrations')
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off

estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)
stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)





%% step size h = 0.15 - FIGURE 11
e0 = 2e-2;
s0 = 5e-2;
c0 = 0;
p0 = 0;
x0 = [e0;
    s0;
    c0;
    p0];

lastproduct = zeros(1,50);
figure;
hold on 
for numtrials = 1:50
    z = randn;
    theta1 = exp(2.3 + 0.30*z);
    theta2 = exp(-4 + 1*z);
    theta3 = exp(-2 + 0.30*z);
    ddt = @(t,x) [(-1*theta1*x(1)*x(2)) + ((theta2+theta3)*x(3));
        (-1*theta1*x(1)*x(2)) + (theta2*x(3));
        (theta1*x(1)*x(2)) - ((theta2+theta3)*x(3));
        theta3*x(3)];
    
    
    h = 0.15;
    y = zeros((30/h), 4);
    y(1, :) = x0';
    for i=1:((30/h) - 1)
        y(i+1, :) =  y(i,:) + h * (ddt(i*h, y(i,:))');
    end

 
    lastproduct(numtrials) = y(end,4);
    
    plot(0:h:30-h, y(:,1), 'b--')
    plot(0:h:30-h, y(:,2), 'g')
    plot(0:h:30-h, y(:,3), 'c--')
    plot(0:h:30-h, y(:,4), 'r')
end 

title('Concentrations over time with lognormal reaction rate coefficients and step size of 0.15')
xlabel('Time')
ylabel('Concentrations')
legend('E: Enzyme', 'S: Substrate', 'ES/C: Enzyme-substrate compound', 'P: Product of the reaction') 
hold off

estimated_product = mean(lastproduct);
fprintf('The expected value of the concentration of the \nproduct P at time t = 30 is %2.4f \n', estimated_product)
stddev_product = std(lastproduct);
standarderr_product = stddev_product / sqrt(50);
ci_lower = estimated_product - 1.96*standarderr_product;
ci_upper = estimated_product + 1.96*standarderr_product;
fprintf('The 95%% confidence interval for the expected value of the \nconcentration of the product P at time t = 30 is [%2.4f , %2.4f] \n', ci_lower, ci_upper)