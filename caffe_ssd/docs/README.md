use the caffe_ssd by weiLiu:

    1: cd caffe_ssd/
    
    2: create lmdb data:    sh create.sh   your_data_path     (first ,ensure flistPcl.py put in tools)
    
    3: train or test 
    
some tools:

    showlmdb.py：show your lmdb dataset    python showlmdb.py your lmdb_datasets
    
    ssd_detect_jiaotong.py: use your caffemodel to detect and transfer result to xml file, just like VOC format
    
    delSpacePcl.py: del all of space in filename
    
    
