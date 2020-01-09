;; Auto-generated. Do not edit!


(when (boundp 'control::Actuator)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'Actuator (find-package "CONTROL")))
(unless (find-package "CONTROL::ACTUATOR")
  (make-package "CONTROL::ACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude Actuator.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control::Actuator
  :super ros::object
  :slots (_header _frontlefttop _frontleftbottom _frontrighttop _frontrightbottom _backlefttop _backleftbottom _backrighttop _backrightbottom _flj _frj _blj _brj ))

(defmethod control::Actuator
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frontlefttop __frontlefttop) 0.0)
    ((:frontleftbottom __frontleftbottom) 0.0)
    ((:frontrighttop __frontrighttop) 0.0)
    ((:frontrightbottom __frontrightbottom) 0.0)
    ((:backlefttop __backlefttop) 0.0)
    ((:backleftbottom __backleftbottom) 0.0)
    ((:backrighttop __backrighttop) 0.0)
    ((:backrightbottom __backrightbottom) 0.0)
    ((:flj __flj) 0.0)
    ((:frj __frj) 0.0)
    ((:blj __blj) 0.0)
    ((:brj __brj) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frontlefttop (float __frontlefttop))
   (setq _frontleftbottom (float __frontleftbottom))
   (setq _frontrighttop (float __frontrighttop))
   (setq _frontrightbottom (float __frontrightbottom))
   (setq _backlefttop (float __backlefttop))
   (setq _backleftbottom (float __backleftbottom))
   (setq _backrighttop (float __backrighttop))
   (setq _backrightbottom (float __backrightbottom))
   (setq _flj (float __flj))
   (setq _frj (float __frj))
   (setq _blj (float __blj))
   (setq _brj (float __brj))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frontlefttop
   (&optional __frontlefttop)
   (if __frontlefttop (setq _frontlefttop __frontlefttop)) _frontlefttop)
  (:frontleftbottom
   (&optional __frontleftbottom)
   (if __frontleftbottom (setq _frontleftbottom __frontleftbottom)) _frontleftbottom)
  (:frontrighttop
   (&optional __frontrighttop)
   (if __frontrighttop (setq _frontrighttop __frontrighttop)) _frontrighttop)
  (:frontrightbottom
   (&optional __frontrightbottom)
   (if __frontrightbottom (setq _frontrightbottom __frontrightbottom)) _frontrightbottom)
  (:backlefttop
   (&optional __backlefttop)
   (if __backlefttop (setq _backlefttop __backlefttop)) _backlefttop)
  (:backleftbottom
   (&optional __backleftbottom)
   (if __backleftbottom (setq _backleftbottom __backleftbottom)) _backleftbottom)
  (:backrighttop
   (&optional __backrighttop)
   (if __backrighttop (setq _backrighttop __backrighttop)) _backrighttop)
  (:backrightbottom
   (&optional __backrightbottom)
   (if __backrightbottom (setq _backrightbottom __backrightbottom)) _backrightbottom)
  (:flj
   (&optional __flj)
   (if __flj (setq _flj __flj)) _flj)
  (:frj
   (&optional __frj)
   (if __frj (setq _frj __frj)) _frj)
  (:blj
   (&optional __blj)
   (if __blj (setq _blj __blj)) _blj)
  (:brj
   (&optional __brj)
   (if __brj (setq _brj __brj)) _brj)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _frontlefttop
    8
    ;; float64 _frontleftbottom
    8
    ;; float64 _frontrighttop
    8
    ;; float64 _frontrightbottom
    8
    ;; float64 _backlefttop
    8
    ;; float64 _backleftbottom
    8
    ;; float64 _backrighttop
    8
    ;; float64 _backrightbottom
    8
    ;; float64 _flj
    8
    ;; float64 _frj
    8
    ;; float64 _blj
    8
    ;; float64 _brj
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _frontlefttop
       (sys::poke _frontlefttop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frontleftbottom
       (sys::poke _frontleftbottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frontrighttop
       (sys::poke _frontrighttop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frontrightbottom
       (sys::poke _frontrightbottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _backlefttop
       (sys::poke _backlefttop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _backleftbottom
       (sys::poke _backleftbottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _backrighttop
       (sys::poke _backrighttop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _backrightbottom
       (sys::poke _backrightbottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flj
       (sys::poke _flj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _frj
       (sys::poke _frj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _blj
       (sys::poke _blj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brj
       (sys::poke _brj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _frontlefttop
     (setq _frontlefttop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frontleftbottom
     (setq _frontleftbottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frontrighttop
     (setq _frontrighttop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frontrightbottom
     (setq _frontrightbottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _backlefttop
     (setq _backlefttop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _backleftbottom
     (setq _backleftbottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _backrighttop
     (setq _backrighttop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _backrightbottom
     (setq _backrightbottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flj
     (setq _flj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _frj
     (setq _frj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _blj
     (setq _blj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brj
     (setq _brj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get control::Actuator :md5sum-) "ecf7f2c939d6596e550f5f3f0601f351")
(setf (get control::Actuator :datatype-) "control/Actuator")
(setf (get control::Actuator :definition-)
      "Header header
float64 frontlefttop
float64 frontleftbottom
float64 frontrighttop
float64 frontrightbottom
float64 backlefttop
float64 backleftbottom
float64 backrighttop
float64 backrightbottom
float64 flj
float64 frj
float64 blj
float64 brj
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



(provide :control/Actuator "ecf7f2c939d6596e550f5f3f0601f351")


