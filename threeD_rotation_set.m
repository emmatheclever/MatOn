function R_set = threeD_rotation_set(joint_angles,joint_axes)
% Generate a set of planar rotation matrices corresponding to the angles
% and axes in the input vector
%
% Inputs:
%
%   joint_angles: a 1xn or nx1 vector of joint angles
%
%   joint_axes: a cell array of the same size as joint_angles, each element
%       of which is a one-character string 'x','y', or 'z' that specifies
%       which axis the rotation is around
%
% Output:
%
%   R_set: a cell array of the same size as the vector joint_angles, in
%       which each cell contains the planar rotation matrix for the angle
%       in the corresponding entry of the vector

    R_set = cell(size(joint_angles))
    
    
    for i=1 : length(joint_angles)
        switch joint_axes{i}
            case 'x'
                R_set{i} = Rx(joint_angles(i))
            
            case 'y'
                R_set{i} = Ry(joint_angles(i))
                
            case 'z'
                R_set{i} = Rz(joint_angles(i))

            otherwise
               error([joint_axis{i} 'is not a known joint axis'])
        end

end

