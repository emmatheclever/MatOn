function v_set_s = vector_set_cumulative_sum(v_set)
% Take the cumulative sum of a set of vectors.
%
% Inputs:
%
%   v_set: a 1xn cell array, each element of which is a 2x1 or 3x1 vector
%
% Output:
%
%   v_set_s: a 1xn cell array, each element of which is a 2x1 or 3x1 vector
%       and is the cumulative sum of vectors from v_set
    
    v_set_s = v_set
    s = 0
    for i = 1: length(v_set)
        s = v_set{i}+s
        v_set_s{i}=s
    end
end