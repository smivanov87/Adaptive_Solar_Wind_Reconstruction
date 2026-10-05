%% Space weather
% main_AdaptiveREG
% Start here. Main script for running the adaptive reconstruction workflow.
% Data
% OMNI2
OMNI_folder = fullfile(fileparts(pwd), 'Data');

if ~isfolder(OMNI_folder)
    % mkdir('Data');
    mkdir(OMNI_folder);
end

if ~isfile(fullfile(OMNI_folder, 'omni2_all_years.dat'))
url = 'https://spdf.gsfc.nasa.gov/pub/data/omni/low_res_omni/omni2_all_years.dat';
filename = strcat(OMNI_folder,'/omni2_all_years.dat');
websave(filename, url);
end
load(strcat(OMNI_folder, '/omni2_all_years.dat'), '-ascii');

Tdate=datetime(omni2_all_years(1:end,1),month(omni2_all_years(1:end,2)),day(omni2_all_years(1:end,2)),omni2_all_years(1:end,3),0,0  );

% Processing the entire database takes considerable time. 
% I recommend using time boundaries to fill the gaps.
t1=find(Tdate(:)=='01-Jan-1974 00:00:00'); 
t2=find(Tdate(:)=='01-Jan-1975 00:00:00')-1;

% Gap Filling
'V'; ma=9999; TSg=omni2_all_years(t1:t2,39); gaps_mask2=99; V=fillgapsREGa2(omni2_all_years(t1:t2,25),ma,3,8,TSg,gaps_mask2,5,4,3000,3); %V
save(fullfile(OMNI_folder, 'V.mat'), 'V');

'Np'; ma=999.9; TSg=omni2_all_years(t1:t2,41); gaps_mask2=99999; Np=fillgapsREGa2(omni2_all_years(t1:t2,24),ma,4,5,TSg,gaps_mask2,4,6,3000,1); %Np
save(fullfile(OMNI_folder, 'Np.mat'), 'Np');

'Bx'; ma=999.9; TSg=omni2_all_years(t1:t2,39); gaps_mask2=99; Bx=fillgapsREGa2(omni2_all_years(t1:t2,13),ma,4,5,TSg,gaps_mask2,5,4,3000,3); %Bx
save(fullfile(OMNI_folder, 'Bx.mat'), 'Bx');

'By'; ma=999.9; TSg=omni2_all_years(t1:t2,39); gaps_mask2=99; By=fillgapsREGa2(omni2_all_years(t1:t2,16),ma,4,4,TSg,gaps_mask2,5,4,5000,1); %By
save(fullfile(OMNI_folder, 'By.mat'), 'By');

'Bz'; ma=999.9; TSg=omni2_all_years(t1:t2,41); gaps_mask2=99999; Bz=fillgapsREGa2(omni2_all_years(t1:t2,17),ma,4,4,TSg,gaps_mask2,4,6,3000,5); %Bz
save(fullfile(OMNI_folder, 'Bz.mat'), 'Bz');

plot(V); hold on; plot(omni2_all_years(t1:t2,25)); hold off; 




