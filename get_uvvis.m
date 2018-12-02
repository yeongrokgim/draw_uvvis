function [xx,uvvis] = get_uvvis(energy,f,HWHM,range,grid)


if nargin < 5
    grid = 700;
    warning('using default grid 700 points');
end
if nargin < 4
    range = nm2ev([150,800]);
    warning('using default range 150 - 800 nm');
end
if nargin < 3
    HWHM = 0.15;  % gaussian broadening in eV
    warning('using default broadening 0.3 eV');
end

if min(energy) > 50;
    energy = nm2ev(energy);
    warning('Excitation energy values are converted to eV unit');
end
if min(range) < 50;
    range = ev2nm(range);
    warning('wavelength range converted to nm unit');
end
Emin = min(range);
Emax = max(range);

%% data input
% oscillation strength f (arb. unit)
% f = [ ];
% excitation energy (eV)
% energy = [ ];

if numel(f) ~= numel(energy)
    error( 'number of elements in f and energy should be same')
end

%% setup constant
% Emin = nm2ev(700); % minimum energy in plot
% Emax = nm2ev(100) % maximum energy in plot
% grid = 500;
% nstates = numel(energy);
% xx = linspace(Emin,Emax,grid);
xx = nm2ev(linspace(Emin,Emax,grid));


uvvis = zeros(numel(energy),numel(xx));

for ind = 1:numel(energy)
    tmp =  gaussian(xx,energy(ind),HWHM);
    uvvis(ind,:) = tmp./max(tmp).*f(ind);
    clear tmp
end
xx = ev2nm(xx);


