function f = gaussian(x, mu, sigma)

f = exp( -1  * [( x - mu ).^2] / [2*(sigma^2)]);

