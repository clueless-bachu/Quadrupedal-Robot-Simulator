;; Auto-generated. Do not edit!


(when (boundp 'deeprl::State)
  (if (not (find-package "DEEPRL"))
    (make-package "DEEPRL"))
  (shadow 'State (find-package "DEEPRL")))
(unless (find-package "DEEPRL::STATE")
  (make-package "DEEPRL::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeprl::State
  :super ros::object
  :slots (_header _error_dist _error_angle _x _y _z _dx _dy _dz _roll _pitch _yaw _droll _dpitch _dyaw _flj _fltl _flbl _frj _frtl _frbl _blj _bltl _blbl _brj _brtl _brbl _dflj _dfltl _dflbl _dfrj _dfrtl _dfrbl _dblj _dbltl _dblbl _dbrj _dbrtl _dbrbl ))

(defmethod deeprl::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error_dist __error_dist) 0.0)
    ((:error_angle __error_angle) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    ((:dz __dz) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:droll __droll) 0.0)
    ((:dpitch __dpitch) 0.0)
    ((:dyaw __dyaw) 0.0)
    ((:flj __flj) 0.0)
    ((:fltl __fltl) 0.0)
    ((:flbl __flbl) 0.0)
    ((:frj __frj) 0.0)
    ((:frtl __frtl) 0.0)
    ((:frbl __frbl) 0.0)
    ((:blj __blj) 0.0)
    ((:bltl __bltl) 0.0)
    ((:blbl __blbl) 0.0)
    ((:brj __brj) 0.0)
    ((:brtl __brtl) 0.0)
    ((:brbl __brbl) 0.0)
    ((:dflj __dflj) 0.0)
    ((:dfltl __dfltl) 0.0)
    ((:dflbl __dflbl) 0.0)
    ((:dfrj __dfrj) 0.0)
    ((:dfrtl __dfrtl) 0.0)
    ((:dfrbl __dfrbl) 0.0)
    ((:dblj __dblj) 0.0)
    ((:dbltl __dbltl) 0.0)
    ((:dblbl __dblbl) 0.0)
    ((:dbrj __dbrj) 0.0)
    ((:dbrtl __dbrtl) 0.0)
    ((:dbrbl __dbrbl) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _error_dist (float __error_dist))
   (setq _error_angle (float __error_angle))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   (setq _dz (float __dz))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _droll (float __droll))
   (setq _dpitch (float __dpitch))
   (setq _dyaw (float __dyaw))
   (setq _flj (float __flj))
   (setq _fltl (float __fltl))
   (setq _flbl (float __flbl))
   (setq _frj (float __frj))
   (setq _frtl (float __frtl))
   (setq _frbl (float __frbl))
   (setq _blj (float __blj))
   (setq _bltl (float __bltl))
   (setq _blbl (float __blbl))
   (setq _brj (float __brj))
   (setq _brtl (float __brtl))
   (setq _brbl (float __brbl))
   (setq _dflj (float __dflj))
   (setq _dfltl (float __dfltl))
   (setq _dflbl (float __dflbl))
   (setq _dfrj (float __dfrj))
   (setq _dfrtl (float __dfrtl))
   (setq _dfrbl (float __dfrbl))
   (setq _dblj (float __dblj))
   (setq _dbltl (float __dbltl))
   (setq _dblbl (float __dblbl))
   (setq _dbrj (float __dbrj))
   (setq _dbrtl (float __dbrtl))
   (setq _dbrbl (float __dbrbl))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error_dist
   (&optional __error_dist)
   (if __error_dist (setq _error_dist __error_dist)) _error_dist)
  (:error_angle
   (&optional __error_angle)
   (if __error_angle (setq _error_angle __error_angle)) _error_angle)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:dz
   (&optional __dz)
   (if __dz (setq _dz __dz)) _dz)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:droll
   (&optional __droll)
   (if __droll (setq _droll __droll)) _droll)
  (:dpitch
   (&optional __dpitch)
   (if __dpitch (setq _dpitch __dpitch)) _dpitch)
  (:dyaw
   (&optional __dyaw)
   (if __dyaw (setq _dyaw __dyaw)) _dyaw)
  (:flj
   (&optional __flj)
   (if __flj (setq _flj __flj)) _flj)
  (:fltl
   (&optional __fltl)
   (if __fltl (setq _fltl __fltl)) _fltl)
  (:flbl
   (&optional __flbl)
   (if __flbl (setq _flbl __flbl)) _flbl)
  (:frj
   (&optional __frj)
   (if __frj (setq _frj __frj)) _frj)
  (:frtl
   (&optional __frtl)
   (if __frtl (setq _frtl __frtl)) _frtl)
  (:frbl
   (&optional __frbl)
   (if __frbl (setq _frbl __frbl)) _frbl)
  (:blj
   (&optional __blj)
   (if __blj (setq _blj __blj)) _blj)
  (:bltl
   (&optional __bltl)
   (if __bltl (setq _bltl __bltl)) _bltl)
  (:blbl
   (&optional __blbl)
   (if __blbl (setq _blbl __blbl)) _blbl)
  (:brj
   (&optional __brj)
   (if __brj (setq _brj __brj)) _brj)
  (:brtl
   (&optional __brtl)
   (if __brtl (setq _brtl __brtl)) _brtl)
  (:brbl
   (&optional __brbl)
   (if __brbl (setq _brbl __brbl)) _brbl)
  (:dflj
   (&optional __dflj)
   (if __dflj (setq _dflj __dflj)) _dflj)
  (:dfltl
   (&optional __dfltl)
   (if __dfltl (setq _dfltl __dfltl)) _dfltl)
  (:dflbl
   (&optional __dflbl)
   (if __dflbl (setq _dflbl __dflbl)) _dflbl)
  (:dfrj
   (&optional __dfrj)
   (if __dfrj (setq _dfrj __dfrj)) _dfrj)
  (:dfrtl
   (&optional __dfrtl)
   (if __dfrtl (setq _dfrtl __dfrtl)) _dfrtl)
  (:dfrbl
   (&optional __dfrbl)
   (if __dfrbl (setq _dfrbl __dfrbl)) _dfrbl)
  (:dblj
   (&optional __dblj)
   (if __dblj (setq _dblj __dblj)) _dblj)
  (:dbltl
   (&optional __dbltl)
   (if __dbltl (setq _dbltl __dbltl)) _dbltl)
  (:dblbl
   (&optional __dblbl)
   (if __dblbl (setq _dblbl __dblbl)) _dblbl)
  (:dbrj
   (&optional __dbrj)
   (if __dbrj (setq _dbrj __dbrj)) _dbrj)
  (:dbrtl
   (&optional __dbrtl)
   (if __dbrtl (setq _dbrtl __dbrtl)) _dbrtl)
  (:dbrbl
   (&optional __dbrbl)
   (if __dbrbl (setq _dbrbl __dbrbl)) _dbrbl)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _error_dist
    8
    ;; float64 _error_angle
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _dx
    8
    ;; float64 _dy
    8
    ;; float64 _dz
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _droll
    8
    ;; float64 _dpitch
    8
    ;; float64 _dyaw
    8
    ;; float64 _flj
    8
    ;; float64 _fltl
    8
    ;; float64 _flbl
    8
    ;; float64 _frj
    8
    ;; float64 _frtl
    8
    ;; float64 _frbl
    8
    ;; float64 _blj
    8
    ;; float64 _bltl
    8
    ;; float64 _blbl
    8
    ;; float64 _brj
    8
    ;; float64 _brtl
    8
    ;; float64 _brbl
    8
    ;; float64 _dflj
    8
    ;; float64 _dfltl
    8
    ;; float64 _dflbl
    8
    ;; float64 _dfrj
    8
    ;; float64 _dfrtl
    8
    ;; float64 _dfrbl
    8
    ;; float64 _dblj
    8
    ;; float64 _dbltl
    8
    ;; float64 _dblbl
    8
    ;; float64 _dbrj
    8
    ;; float64 _dbrtl
    8
    ;; float64 _dbrbl
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _error_dist
       (sys::poke _error_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error_angle
       (sys::poke _error_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dz
       (sys::poke _dz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _droll
       (sys::poke _droll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dpitch
       (sys::poke _dpitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dyaw
       (sys::poke _dyaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flj
       (sys::poke _flj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fltl
       (sys::poke _fltl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flbl
       (sys::poke _flbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frj
       (sys::poke _frj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frtl
       (sys::poke _frtl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frbl
       (sys::poke _frbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blj
       (sys::poke _blj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bltl
       (sys::poke _bltl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blbl
       (sys::poke _blbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brj
       (sys::poke _brj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brtl
       (sys::poke _brtl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brbl
       (sys::poke _brbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dflj
       (sys::poke _dflj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dfltl
       (sys::poke _dfltl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dflbl
       (sys::poke _dflbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dfrj
       (sys::poke _dfrj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dfrtl
       (sys::poke _dfrtl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dfrbl
       (sys::poke _dfrbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dblj
       (sys::poke _dblj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dbltl
       (sys::poke _dbltl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dblbl
       (sys::poke _dblbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dbrj
       (sys::poke _dbrj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dbrtl
       (sys::poke _dbrtl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dbrbl
       (sys::poke _dbrbl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _error_dist
     (setq _error_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error_angle
     (setq _error_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dx
     (setq _dx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dy
     (setq _dy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dz
     (setq _dz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _droll
     (setq _droll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dpitch
     (setq _dpitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dyaw
     (setq _dyaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flj
     (setq _flj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fltl
     (setq _fltl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flbl
     (setq _flbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frj
     (setq _frj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frtl
     (setq _frtl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frbl
     (setq _frbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blj
     (setq _blj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bltl
     (setq _bltl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blbl
     (setq _blbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brj
     (setq _brj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brtl
     (setq _brtl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brbl
     (setq _brbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dflj
     (setq _dflj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dfltl
     (setq _dfltl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dflbl
     (setq _dflbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dfrj
     (setq _dfrj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dfrtl
     (setq _dfrtl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dfrbl
     (setq _dfrbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dblj
     (setq _dblj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dbltl
     (setq _dbltl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dblbl
     (setq _dblbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dbrj
     (setq _dbrj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dbrtl
     (setq _dbrtl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dbrbl
     (setq _dbrbl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeprl::State :md5sum-) "342a3f14758aa4591390d3a42f7f92a4")
(setf (get deeprl::State :datatype-) "deeprl/State")
(setf (get deeprl::State :definition-)
      "Header header
float64 error_dist
float64 error_angle
float64 x
float64 y
float64 z
float64 dx
float64 dy
float64 dz
float64 roll
float64 pitch
float64 yaw
float64 droll
float64 dpitch
float64 dyaw
float64 flj
float64 fltl
float64 flbl
float64 frj
float64 frtl
float64 frbl
float64 blj
float64 bltl
float64 blbl
float64 brj
float64 brtl
float64 brbl
float64 dflj
float64 dfltl
float64 dflbl
float64 dfrj
float64 dfrtl
float64 dfrbl
float64 dblj
float64 dbltl
float64 dblbl
float64 dbrj
float64 dbrtl
float64 dbrbl

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



(provide :deeprl/State "342a3f14758aa4591390d3a42f7f92a4")


