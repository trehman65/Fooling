%% batchrun('Data','dog')
% Data folder contains dog folder, that contains images of the dogs

function [] = batchrun(directory,class)

img_dir = fullfile(directory, class);
image_rgb_info  = dir( fullfile(img_dir, '*.jpg'));
image_rgb_filenames = fullfile(img_dir, {image_rgb_info.name} );



for i = 1:length(image_rgb_filenames)

    fprintf('Running on image %d',i)
    labels(1,i)=runnetwork(image_rgb_filenames{i},1,1,0);
    
end

N=5;
[labls, freqs]=topNclasses(labels,N)

end