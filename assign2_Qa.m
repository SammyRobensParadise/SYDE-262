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
seller_deadweight_loss=0.5*(5.5-4.5)*0.5;
disp('Seller deadweight loss');
disp(seller_deadweight_loss);

disp('c)');
% shift with $1 tax on supplier or demand shift left
demand_with_tax=-q+24;
supplier_deadweight_loss=0.5*(20-19.5)*(5-4);
disp('Supplier deadweight loss')
disp(supplier_deadweight_loss);

% plot initial graph
plot(q,supply,q,demand,q,supply_with_tax,q,demand_with_tax);
title('Demand vs. Supply curve for a widget');
ylabel('Price');
xlabel('Quantity');
legend({'Supply','Demand','Seller with tax','Supplier with tax'},'Location','southwest')


