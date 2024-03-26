%% RELAX-Jr EEG CLEANING PIPELINE, Copyright (C) (2024) Aron Hill & Neil Bailey

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

%% pop_RELAX:
% Clean data with RELAX via the EEGLAB gui:
function [RELAXJr_citation] = pop_RELAXJr_citation()

    % GUI layout
    geometry = {[1.0] ... % setting directory / file to process
                1 ...
                [1.0] ... 
                1 ...
                };
            
            % GUI settings with defaults:        
uilist = {{'style', 'text', 'string', 'If you use RELAX-Jr, please cite the following manuscript, as well as the dependencies you used (details of which can be found in the manuscript)','fontweight','bold','fontsize', 12} ...
          {}...
          {'style', 'text', 'string', 'Hill, A.T., Enticott, P.G., Fitzgerald, P., & Bailey, N. (2024). RELAX-Jr: An automated pre-processing pipeline for developmental EEG recordings. bioRxiv','fontsize', 12} ...
          {}...
          };
          
          result = inputgui('geometry', geometry, 'geomvert', [1 .2 1 .2],  'uilist', uilist, 'title', 'RELAX-Jr citation',  'helpcom', 'pophelp(''pop_RELAXJr_citation'')');
          
          RELAXJr_citation = {'Hill, A.T., Enticott, P.G., Fitzgerald, P., Bailey, N. (2024). RELAX-Jr: An automated pre-processing pipeline for developmental EEG recordings. bioRxiv.'};
          
end
