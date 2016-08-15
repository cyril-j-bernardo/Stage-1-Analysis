function F = root2d(x)
V = 0.05
p_init = 1e6
T_init = 330
A_exit = 0.0005
n = 1.4
gamma = 1.4

b = (1 - gamma) ./ (2 * gamma)
p_o = 101000 * (1 + (1.4 - 1) / 2)^(1.4 / 0.4)
rho_o = 1.229 * (1 + 0.2) ^ (1 / 0.4)
F(1) = (- (gamma .* A_exit) ./ V) .* ((2 ./ (gamma + 1)) .^ ...
    (1 ./ (gamma - 1))) .* ((((2 .* gamma) .* ((x(1)) .^ (1 ./ gamma)) ./ ...
    (gamma + 1) .* x(2))))
F(2) = (rho_o ./ x(2)) - (p_o ./ x(1)) .^ (1 / 1.4)