function R = R_planar(theta)
% Planar rotation matrix
%
% Input:
%   
%   theta: scalar value for rotation angle
%
% Output:
%
%   R: 2x2 rotation matrix that for rotation by theta

R = [cos(theta), -1*sin(theta);
    sin(theta), cos(theta)]

end