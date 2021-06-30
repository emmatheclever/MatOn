function R_set_c = rotation_set_cumulative_product(R_set)
% Take the cumulative product of a set of rotation matrices
%
% Input:
%
%   R_set: A 1xn cell array, each element of which is a 2x2 or 3x3 rotation
%       matrix
%
% Output:
%
%   R_set_c: A 1xn cell array, the ith element of which is a 2x2 or 3x3 rotation
%       matrix that is the cumulative product of the rotation matrices in
%       R_set from the first matrix up to the ith matrix


    R_set_c = R_set
    dim_in = size(R_set(1))
    product = ones(dim_in(1))
    for i=1:length(R_set)
        product = product * R_set{i}
        R_set_c{i} = product
    end
end