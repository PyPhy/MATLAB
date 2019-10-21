function [x, y, z] = Shperical2Cartesian(r, theta, phi)

    x = r.* sin(theta).* cos(phi);
    y = r.* sin(theta).* sin(phi);
    z = r.* cos(theta);
