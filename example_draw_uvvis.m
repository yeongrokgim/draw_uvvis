% function example_draw_uvvis

% let we know there is an excitation at 1.5 eV with oscillator strength
% (or relative intensity) of 1.0 

energy = 2.0;
f = 1.0;
HWHM = 0.15; % broadening in eV
range = [300,700];
grid = 700;

[xx,uvvis] = get_uvvis(energy,f,HWHM,range,grid);
clf

subplot(2,1,1)
plot(xx,uvvis)
xlabel('wavelength (nm)')
ylabel('oscillator strength')
hold on
plot(repmat(ev2nm(energy),[2,1]),[0 f],'marker','none','color','r')
hold off

subplot(2,1,2)
plot(nm2ev(xx),uvvis)
xlabel('excitation energy (eV)')
ylabel('oscillator strength')
hold on
plot(repmat(energy,[2,1]),[0 f],'marker','none','color','r')
hold off