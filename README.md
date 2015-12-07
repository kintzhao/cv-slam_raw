# cv_ekfslam by Kint Zhao yh 2015.12.07
说明：   2015-06-28     by Kint Zhao    yhzhao_hit@163.com

  1.工程依赖的库： artoolkitplus（2d mark的运动跟踪） + opencv(运算库与图像显示)
                 ros(机器人操作系统indigo/ hydro)    g2o  eigen  
     IDE:  Qt creator

  2. 硬件平台：turtlebot + usb camera

  3.　软件架构说明：
    在ROS分布式架构下，usb摄像头采集图像，并发送相应的topic;
    turtlebot 在键盘控制下运行，读取相应的速度信息；
    最后在同时接受并综合到两信息的情况下，进行EKFSLAM进行数据融合。

  4. 文件说明：
    /ARTolkitPlus         存放的是artoolkitplus的相应源文件  /include 是包含的相应源码头文件
    /image_convert        是用来将opencv处理的图像转换到ros的rviz可以显示识别的形式
    /qrslam               主程序文件与相应算法操作文件
           /class         定义的用来提取image中 2d mark的操作
           qrslam         定义的算法实现文件
           main.cpp       主程序
           /pub           ROS操作中的机器人控制程序
    /camera_calibration   用于opencv图像校正的文件
    /data_sources         配置文件夹 结果输出
    /turtorial_slam2d     g2o仿真部分

  5 功能设计：
        初始化定位 坐标系特征   地图固定
        ekfslam算法框架  速度运动模型  天花板观测模型  逆观测模型
        闭环检测  g2o:2d 图优化
        图像光照补偿 与 多阈值优化策略
        主动搜索
        gazebo 环境 : 模型设计  +  仿真设计

