;; Auto-generated. Do not edit!


(when (boundp 'control::Imu_data)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'Imu_data (find-package "CONTROL")))
(unless (find-package "CONTROL::IMU_DATA")
  (make-package "CONTROL::IMU_DATA"))

(in-package "ROS")
;;//! \htmlinclude Imu_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control::Imu_data
  :super ros::object
  :slots (_header _acc_x _acc_y _acc_z _gyro_r _gyro_p _gyro_y ))

(defmethod control::Imu_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:gyro_r __gyro_r) 0.0)
    ((:gyro_p __gyro_p) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _gyro_r (float __gyro_r))
   (setq _gyro_p (float __gyro_p))
   (setq _gyro_y (float __gyro_y))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:gyro_r
   (&optional __gyro_r)
   (if __gyro_r (setq _gyro_r __gyro_r)) _gyro_r)
  (:gyro_p
   (&optional __gyro_p)
   (if __gyro_p (setq _gyro_p __gyro_p)) _gyro_p)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ;; float64 _gyro_r
    8
    ;; float64 _gyro_p
    8
    ;; float64 _gyro_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_r
       (sys::poke _gyro_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_p
       (sys::poke _gyro_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_r
     (setq _gyro_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_p
     (setq _gyro_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get control::Imu_data :md5sum-) "4e13d478fc5782f061e903f73ff5e15d")
(setf (get control::Imu_data :datatype-) "control/Imu_data")
(setf (get control::Imu_data :definition-)
      "Header header
float64 acc_x
float64 acc_y
float64 acc_z
float64 gyro_r
float64 gyro_p
float64 gyro_y

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :control/Imu_data "4e13d478fc5782f061e903f73ff5e15d")


