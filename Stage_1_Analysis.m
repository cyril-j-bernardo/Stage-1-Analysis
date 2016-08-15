V = 0.05 % m^3
p_init = 1e6 % Pascals
T_init = 330 % Kelvins
A_exit = 0.0005 % m^2
n = 1.4 % isentropic process
gamma = 1.4 % heat capacity ratio for air

a_o1 = 20.05 * (T_init)^(1/2) % speed of sound using IC
b = (1 - gamma) / (2 * gamma)
t = [0:0.5:5]
ratio = (1 + ((n - 1) ./ 2) * (A_exit .* a_o1 ./ V) * ...
    (((gamma + 1) ./ 2) ^ ((gamma + 1) / (2 * (1 - gamma)))) * t) .^ ((2 .* n) ./ (1 - n))

fun = @root2d;
x0 = [100000 1]
x = fsolve(fun,x0)