function l = threeD_draw_links(link_set,link_colors,ax)
% Draw a set of lines for a link structure into a specified axis
%
% Inputs:
%
%   link_set: A 1xn cell array, each entry of which is a matrix whose
%       columns are the endpoints of the lines describing one link of the
%       system (as constructed by build_links with threeD input)
%   link_colors: 1xn cell array. Each entry can be either a standard matlab
%       color string (e.g., 'k' or 'r') or a 1x3 vector of the RGB values
%       for the color (range from 0 to 1)
%   ax: The handle to an axis in which to plot the links
%
% Output:
%
%   l: A cell array of the same size as link_set, in which each entry is a
%       handle to a line structure for that link


    %%%%%%%%
    % Start by creating an empty cell array of the same size as link_set,
    % named 'l'
    l = cell(size(link_set))

    %%%%%%%%
    % Draw a line for each link, with circles at the endpoints, and save
    % the handle for this line in the corresponding element of 'l'
    for i=1:length(link_set)
        l{i} = line(ax, link_set{i}(1,:), link_set{i}(2,:),link_set{i}(3,:) ,'marker', 'o', 'color', link_colors{i})
    end
    

end
