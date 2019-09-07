
(cl:in-package :asdf)

(defsystem "opti_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Odom" :depends-on ("_package_Odom"))
    (:file "_package_Odom" :depends-on ("_package"))
  ))