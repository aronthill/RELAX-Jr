%% RELAX EEG CLEANING PIPELINE, Copyright (C) (2024) Aron Hill & Neil Bailey

%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see https://www.gnu.org/licenses/.

%% pop_RELAXJr_help:
% Clean data with RELAX via the EEGLAB gui:
function [RELAXJr_wiki_website] = pop_RELAXJr_help()

    % GUI layout
    geometry = {[1.0] ... % setting directory / file to process
                1 ...
                [1.0] ... 
                1 ...
                };
            
% GUI settings with defaults:        
uilist = {{'style', 'text', 'string', 'Instructions for running RELAX-Jr can be found in the Wiki for the GitHub release, at the following website:','fontweight','bold','fontsize', 12} ...
          {}...
          {'style', 'text', 'string', 'https://github.com/aronthill/RELAX-Jr/wiki','fontweight','normal','fontsize', 12} ...
          {}...
          };
          
          result = inputgui('geometry', geometry, 'geomvert', [1 .4 1 .4],  'uilist', uilist, 'title', 'RELAX-Jr help',  'helpcom', 'pophelp(''pop_RELAXJr_help'')');
          
          RELAXJr_wiki_website = 'https://github.com/aronthill/RELAX-Jr/wiki';
end