m1=[10 20 10 10; 20 40 10 10; 30 40 20 20; 50 60 20 20];
m2=[10 20 10 10; 20 40 10 10; 20 20 30 40; 20 20 50 60];
m3=[20 30 20 20; 30 50 20 20; 40 50 30 30; 60 70 30 30];
m4=[10 20 30 40; 20 40 50 60; 10 10 20 20; 10 10 20 20];
m5=[1 2 1 1; 2 4 1 1; 3 4 2 2; 5 6 2 2];
%alternative way to compute mae is
%initial_MAE=sum(sum(abs(initial-Block)))/(size_Block(1)*size_Block(2))
mae1=mae(m1-m2)
mae2=mae(m1-m3)
mae3=mae(m1-m4)
mae4=mae(m1-m5)
