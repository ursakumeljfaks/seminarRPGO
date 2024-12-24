% vse kroznice narisane
hold on
axis equal
aproksimacija(pi/6,1,linspace(0,1,10),'blue')
aproksimacija(pi/6,2,linspace(0,1,10),'red')
aproksimacija(pi/6,3,linspace(0,1,10),'green')
%enotska kroznica
t2=linspace(0,pi/6);
plot(cos(t2),sin(t2),'k-','LineWidth',0.2);
