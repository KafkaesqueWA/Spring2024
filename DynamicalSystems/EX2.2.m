% Set parameters
c = 1 + 2i;
threshold = 100;
max_iter = 100;
grid_size = 500;

% Create grid
[X,Y] = meshgrid(linspace(-3, 3, grid_size), linspace(-3, 3, grid_size));
Z = X + 1i*Y;
julia_set = zeros(size(Z));

% Compute the Julia set
for n = 1:5
    Z = Z.^2 + c;
    mask = abs(Z) < threshold;
    julia_set(mask) = n;
end

% Plot the Julia set
imagesc(julia_set);
colormap(jet);
axis equal;
axis off;
title('Julia Set of Q_c for c = -1 - 2i');

pause

