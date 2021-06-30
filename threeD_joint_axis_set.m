function joint_axis_vectors = threeD_joint_axis_set(joint_axes)
% Generate a set of planar rotation matrices corresponding to the angles
% and axes in the input vector
%
% Input:
%
%   joint_axes: a cell array of the same size as joint_angles, each element
%       of which is a one-character string 'x','y', or 'z' that specifies
%       which axis the rotation is around
%
% Output:
%
%   joint_axis_vectors: a cell array of the same size as the vector
%       joint_angles, in which each cell contains the unit vector in the
%       direction specified in the corresponding entry of joint_axes

    %%%%%%%%
    % Start by creating an empty cell array of the same size as joint_angles,
    % named 'joint_axis_vectors'
    joint_axis_vectors = cell(size(joint_axes))

        
    for i=1:length(joint_axes)
        switch joint_axes{i}
            case 'x'
                joint_axis_vectors{i} = [1; 0; 0]
            case 'y'
                joint_axis_vectors{i} = [0; 1; 0]
            case 'z' 
                joint_axis_vectors{i} = [0; 0; 1]
            otherwise
                error([joint_axis{i} ' is not a known joint axis'])
        end
    end

end

