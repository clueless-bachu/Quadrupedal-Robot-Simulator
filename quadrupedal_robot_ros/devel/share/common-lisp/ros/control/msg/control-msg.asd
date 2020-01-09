
(cl:in-package :asdf)

(defsystem "control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Actuator" :depends-on ("_package_Actuator"))
    (:file "_package_Actuator" :depends-on ("_package"))
    (:file "Imu_data" :depends-on ("_package_Imu_data"))
    (:file "_package_Imu_data" :depends-on ("_package"))
  ))