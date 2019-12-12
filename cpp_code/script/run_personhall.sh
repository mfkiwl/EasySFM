#data path
image_folder=/media/edward/BackupPlus/Data/sfm_data/person-hall/test_img;
image_list=/media/edward/BackupPlus/Data/sfm_data/person-hall/sub_image_list.txt;
calib_k_file=/media/edward/BackupPlus/Data/sfm_data/person-hall/Calibration/K.txt;
calib_distort_file=/media/edward/BackupPlus/Data/sfm_data/person-hall/Calibration/distort.txt; # not neccessary, if not provided, just set it as none
output_folder=../test_data/output;

#processing parameters
feature_type=S; # S for SURF an O for ORB
ba_frequency=3; # Do Bundle Adjustment each X frame

#display parameters
view_sphere=0; # render the point as sphere during visualization (sphere 1, point 0)


#gdb --args \ # Debug mode
./bin/sfm ${image_folder} ${image_list} ${calib_k_file} ${calib_distort_file} ${output_folder} ${feature_type} ${ba_frequency} ${view_sphere}  