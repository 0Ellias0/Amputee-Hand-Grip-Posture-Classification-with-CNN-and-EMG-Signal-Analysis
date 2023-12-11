%%% Este codigo permite calcular la transformada de Wavelet de tiempo corto
%%% https://la.mathworks.com/help/wavelet/ug/continuous-and-discrete-wavelet-analysis.html
%%% Se deben segmentar los matrices de captura de cada una de las gesturas
%X = [matriz1,matriz2,matriz3,matriz4,matriz5,matriz6,matriz7,matriz8,matriz9,matriz10,matriz11,matriz12,matriz13,matriz14,matriz15,matriz16,matriz17,matriz18,matriz19,matriz20,matriz21,matriz22,matriz23,matriz24,matriz25,matriz26,matriz27,matriz28,matriz29,matriz30];
%X = [emg];
X = [Pose0];
%%% Se cargan con el nombre de F. Le cambio el nombre por freqbrk
%%% F=A(1,1:1001);

for i = 1:1
    freqbrk = X(1:250,i);

    signal = freqbrk;



    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure('visible','off');
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    %set(gca, 'Visible', 'off');
    %colorbar('off');
    %export_fig(sprintf('CWT_C%d_1_1001.png', i))
    saveas(gcf,'plot.png')
    savefig('plot.png')


    %% Signal2


    freqbrk = X(501:1501,i);

    signal = freqbrk;


    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_501_1501.png', i))
    %saveas(gcf,filename)
    %savefig(figname)

    %% Signal3

    freqbrk = X(1001:2001,i);

    signal = freqbrk;


    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_1001_2001.png', i))
    %saveas(gcf,filename)
    %savefig(figname)




    %% Signal4

    freqbrk = X(1501:2501,i);

    signal = freqbrk;


    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_1501_2501.png', i))
    %saveas(gcf,filename)
    %savefig(figname)


    %% Signal5

    freqbrk = X(2001:3001,i);

    signal = freqbrk;


    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_2001_3001.png', i))
    %saveas(gcf,filename)
    %savefig(figname)



    %% Signal6

    freqbrk = X(2501:3501,i);

    signal = freqbrk;

    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_2501_3501.png', i))
    %saveas(gcf,filename)
    %savefig(figname)



    %% Signal7

    freqbrk = X(3001:4001,i);

    signal = freqbrk;


    %%% colorbar

    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    export_fig(sprintf('CWT_C%d_3001_4001.png', i))
    %saveas(gcf,filename)
    %savefig(figname)


    %% Signal7

    freqbrk = X(3500:4500,i);

    signal = freqbrk;



    %%% colorbar

    %%% Realice la transformada wavelet continua (CWT) y visualice los resultados

    figure;
    [cfs,f] = cwt(signal,1,'waveletparameters',[3 3.1]);
    hp = pcolor(1:length(signal),f,abs(cfs)); hp.EdgeColor = 'none'; 
    set(gca,'YScale','log');
    xlabel('Número de muestras'); 
    ylabel('log10(f)');
    colorbar
    set(gca, 'Visible', 'off');
    colorbar('off');
    axis off
    export_fig(sprintf('CWT_C%d_3500_4500.png', i))
    %saveas(gcf,filename)
    %savefig(figname)


end
