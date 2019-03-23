# caffe_ssd in traffic
  Updated a minute ago used ssd by caffe in transportation object detection , included car bus minbus persopn minibus bicycle.
  In this model, i use the caffe prototxt to create a ssd net,this net can classifier 7 label,included car bus minibus persion bicycle dangerouscar .
  
Requirements:
  ubunto: 16.04
  cuda:   9.0 and newer
  cudann: 7.0 and newer      
  caffe:  caffe_ssd code  by weiliu     
  python: 2.7     
  opencv: 2.4.13  you also can use the opencv3 to train/test model， but because i used openCV2 developed, so in this project, i made some tools to eval dataset and other convenient tools, if you want use my tools,i really recommend; use opencv2 in my project.     
        
        
             
   
  train and test:
  
      first:
            you must ensure caffe_ssd code should be compiled in your ubunto, just like this:           
              git clone https://github.com/weiliu89/caffe.git caffe-ssd 
              cd cafef_ssd
              make all -j8
              make pycaffe
              
       second:     
            cd your caffe dir/models, create traffic model, like me:
              cd ~/cdffe_ssd/models,   mkdir traffic_model
              
       third:
            use my model/traffic.prototxt,models/solver.prototxt,  put all files in caffe_ssd/models/traffic_model/.
            
       fourth:
            train:  in your caffe_ssd dir, use this command:
            ./build/tools/caffe train -solver=models/traffic_model/solver.prototxt -weights=*********** -gpu all
            because i use this net in arm CPU, and when i use pretrained model weights, CPU parase parameters failed, but if i not use pretained weights in first train,CPU can parase, 
            so if you want train and eval in GPU ,you can use pretrained weights on your first training.   
            test:   in your caffe_ssd dir, use this command:
            ./buidl/tools/caffe test -model=models/traffic_model/test.prototxt -weights=youer training model -gpu ball
            
           tips:
              before training, you must ensure your lmdb file path and labelmap filepath is right in your train and test prototxt ,maybe  occurrs this error: (lmdb)file not found
              
       Be careful：
              In my model, my net was created by VGG16, but i use deep compression(2016 best paper in cvpr:  https://arxiv.org/abs/1510.00149) to Prune, so my net model weights just 2MB, and VGG16 99MB, resnet101 490MB. 
            
