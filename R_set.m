function R_set = planar_rotation_set(joint_angles)
% Generate a set of planar rotation matrices corresponding to the angles in
% the input vector
%
% Input:
%
%   joint_angles: a 1xn or nx1 vector of joint angles
%
% Output:
%
%   R_set: a cell array of the same size as the vector angles, in which
%       each cell contains the planar rotation matrix for the angle in the
%       corresponding entry of the vector

    R_set = cell(in_size(1,1), in_size(1,2))
    
    for i = 1 : in_size(1,1)
        for j= 1 : in_size(1,2)
            rot = R_planar(joint_angles(i,j))
            R_set{i,j} = rot
        end
    end

end