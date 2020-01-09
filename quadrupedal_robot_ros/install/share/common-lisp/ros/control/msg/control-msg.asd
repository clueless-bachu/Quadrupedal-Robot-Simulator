
(cl:in-package :asdf)

(defsystem "control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Imu_data" :depends-on ("_package_Imu_data"))
    (:file "_package_Imu_data" :depends-on ("_package"))
  ))