categories = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
rootFolder = 'OCR';
imds = imageDatastore(fullfile(rootFolder, categories), ...
    'LabelSource', 'foldernames');



cnn1=convolution2dLayer(5,10);
cnn1.Weights = gpuArray(single(randn([5 5 3 10])*0.0001));
cnn2=convolution2dLayer(5,20);
cnn2.Weights = gpuArray(single(randn([5 5 10 20])*0.001));
cnn3=convolution2dLayer(5,40);
cnn3.Weights = gpuArray(single(randn([5 5 20 40])*0.001));
fc1= fullyConnectedLayer(2000);
fc1.Weights = gpuArray(single(randn([2000 5760])*0.1));
fc1.Bias = gpuArray(single(randn([2000 1])*0.1 + 1));
fc2= fullyConnectedLayer(36);
fc2.Weights = gpuArray(single(randn([36 2000])*0.1));
fc2.Bias = gpuArray(single(randn([36 1])*0.1 + 1));
layers = [
    imageInputLayer([128 128 3])
    cnn1
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    cnn2
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    cnn3
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    dropoutLayer(0.25)
    fc1
    reluLayer
    fc2
    softmaxLayer
    classificationLayer]




opts = trainingOptions('sgdm', ...
    'InitialLearnRate', 0.01, ...
    'LearnRateSchedule', 'piecewise', ...
    'LearnRateDropFactor', 0.001, ...
    'LearnRateDropPeriod', 1, ...
    'L2Regularization', 0.004, ...
    'MaxEpochs', 2, ...
    'MiniBatchSize', 50, ...
    'Verbose', true,...
    'Shuffle', 'every-epoch',...
    'Plots','training-progress');


[net, info] = trainNetwork(imds, layers, opts);


ocrv3 = net;
save ocrv3



