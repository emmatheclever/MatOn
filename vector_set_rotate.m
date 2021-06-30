function v_set_R = vector_set_rotate(v_set, R_set)
% Inputs:
%
%   v_set: a 1xn cell array, each element of which is a 2x1 or 3x1 vector,
%       which define vectors in local frames of reference
%   R_set: a 1xn cell array, each element of which is a 2x2 or 3x3 rotation
%       matrix (with the size matching the size of the vectors in v_set),
%       which define the orientations of the frames in which the vectors
%       from v_set are defined
%
% Output:
%
%   v_set_R: a 1xn cell array, each element of which is an 2x1 or 3x1 vector,
%       which are the vectors from v_set, but rotated into the world frame
    
    v_set_R = v_set
    for i = 1: length(v_set)
        v_set_R{i} = R_set{i}*v_set{i}
    end
end

