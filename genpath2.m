function p = genpath2(d, pattern)
%GENPATH2 returns a character vector of paths that don't start with a 
%specified pattern
%
% INPUTS:
%   d       ~ char, the name of of the base folder
%   pattern ~ char/cell, the starting folder pattern to exclude
%
% OUTPUTS:
%   p       ~ char, the cleaned path
%
% Acknowledgement: This function was based on functionality
% introduced by Jesse Hopkings with genpath_exclude on File Exchange
%
% Santiago I. Sordo-Palacios, 2019

% Call MATLAB's genpath()
p = genpath(d);

% Return if missing or empty input argument
if nargin < 2 || isempty(pattern)
    return
end

% Find folders that match the pattern
splitP = split(p, pathsep);
pattern = strcat(filesep, pattern);
hasPattern = contains(splitP, pattern);

% Index out folders with pattern
cleanP = splitP(~hasPattern);

% Return as list in genpath format
p = char(strjoin(cleanP, pathsep));

end % function-genpath2