% setting up the quant range
q=10:30;

% get demand supply lines initially 
supply=q-15;
demand=-1*q+25;

% get intersection of demand and supply curve
intersection=find(supply==demand)-1;
intersection_y=supply(20)+1;

disp('a)');
% calculate consumer surplus
consumer_surplus=0.5*20*(25-5);
disp('Consumer Surplus');
disp(consumer_surplus);

% calculate producer surplus
producer_surplus=0.5*20*5;
disp('Producer Surplus');
disp(producer_surplus);

disp('b)')
% shift with $1 tax on seller or supply shift left
supply_with_tax=q-14;

% plot initial graph
plot(q,supply,q,demand,q,supply_with_tax);
title('Demand vs. Supply curve for a widget');
ylabel('Price');
xlabel('Quantity');
legend({'Supply','Demand','Supply with tax'},'Location','southwest')


