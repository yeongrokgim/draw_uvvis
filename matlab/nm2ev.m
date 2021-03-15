function ev = nm2ev(nm)
%% values taken from http://physics.nist.gov/

% c = 299792458; % speed of light in vacuum m/s;
% h = 6.626070040e-34 % planck constant J*s
% m2nm = 1e-9; % meter to nanometer
% ev2j = 1.6021766208e-19; % electon volt J

ev = 1239.841973964072./nm;

% nm = c*h/ev2j/m2nm/ev
% 1239.841973964072