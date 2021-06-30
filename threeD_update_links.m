function l = threeD_update_links(l,link_set)
% Update the drawings of a set of surfaces for a link structure
%
% Inputs:
%
%   link_set: A 1xn cell array, each entry of which is a matrix whose
%       columns are the endpoints of the lines describing one link of the
%       system (as constructed by planar_build_links or
%       planar_build_links_prismatic
%
% Output:
%
%   l: A cell array of the same size as link_set, in which each entry is a
%       handle to a surface structure for that link


    %%%%%%%%
    % Loop over the surfaces whose handles are in 'l', replacing their 'XData',
    % 'YData', and 'ZData' with the information from 'link_set'
    for i=1:length(l)
        set(l{i}, 'XData', link_set{i}(1,:), 'YData', link_set{i}(2,:), 'ZData', link_set{i}(3,:))

end

