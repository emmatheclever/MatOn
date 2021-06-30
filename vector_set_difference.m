function v_diff = vector_set_difference(v,v_set)
% Find the vector difference v - v_set (the vector pointing to v from each
% element of v_set).
%
% Inputs:
%
%   v: a vector
%
%   v_set: a 1xn cell array of vectors, each of which is the same size as v
%
% Output
%
%   v_diff: a 1xn cell array of vectors, each of which is the difference
%       between v and the corresponding vector in v_set

    %%%%%%%%
    % Start by copying v_set into a new variable v_diff;
    v_diff = v_set
    
    %%%%%%%%
    % Loop over v_diff, subtracting each vector from v
    for i = 1: length(v_set)
        v_diff{i} = v - v_set{i}
    end
     
end
