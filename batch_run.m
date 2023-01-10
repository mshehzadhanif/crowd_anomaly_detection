clear all;
close all;
clc;

%for reproducibility
rng(0);

%paths for dataset and results
dataset_base_dir = '..\UCSD_Anomaly_Dataset';
results_dir = 'Results';
%hyperparameters for the algorihms
params.saliency_filt_sigma = 0.05; %saliency map filter sigma
params.dt_threshold = 0.05; %dt threshold
%parameters - features recomputations, train, val split
params.recompute_feat = 1; %recompute features
params.split_set = 0; %train/val split

%train and evaluate on UCSDPed1
train_anomaly_detection(dataset_base_dir, 'UCSDped1', params, results_dir);
test_anomaly_detection(dataset_base_dir, 'UCSDped1', results_dir);
[roc_frame_level_ped1, roc_pixel_level_ped1]  = evaluation_UCSD_dataset(dataset_base_dir, 'UCSDped1', results_dir, 0);

%train and evaluate on UCSDPed2
train_anomaly_detection(dataset_base_dir, 'UCSDped2', params, results_dir);
test_anomaly_detection(dataset_base_dir, 'UCSDped2', results_dir);
[roc_frame_level_ped2, roc_pixel_level_ped2]  = evaluation_UCSD_dataset(dataset_base_dir, 'UCSDped2', results_dir, 0);

