x = 1:10;
y = [1, 3, 4.8, 6.6, 8.3, 9.0, 9.8, 11.6, 13.0, 16.2;     1.2, 3.4, 4.4, 6.4, 7.1, 8.3, 9.8, 12.2, 13.4, 14.9;     2.2, 3.1, 4.6, 6.8, 7.1, 9.3, 10.9, 11.9, 13.6, 14.4]; 
z=[0];
w=[1];
ymean = mean(y,1); %calcular a media 
desvio = std(y,0,1); %calcular o desvio padrao

figure(); %criar o grafico das medias com barra de erro
errorbar(x,ymean,desvio)
xlabel('tempo');
ylabel('distancia');

figure() %ajuste linear
p = polyfit(x,ymean,1) %retorna os coeficientes do ajuste linear
yfit = polyval(p,x);  %avalia o ajuste linear nos valores de x
plot(x, ymean, '*k', x, yfit, 'r') %grafico com os dados e o ajuste
xlabel('tempo');
ylabel('distancia');
legend('dados','ajuste linear');