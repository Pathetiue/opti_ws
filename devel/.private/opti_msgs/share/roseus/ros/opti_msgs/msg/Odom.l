;; Auto-generated. Do not edit!


(when (boundp 'opti_msgs::Odom)
  (if (not (find-package "OPTI_MSGS"))
    (make-package "OPTI_MSGS"))
  (shadow 'Odom (find-package "OPTI_MSGS")))
(unless (find-package "OPTI_MSGS::ODOM")
  (make-package "OPTI_MSGS::ODOM"))

(in-package "ROS")
;;//! \htmlinclude Odom.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opti_msgs::Odom
  :super ros::object
  :slots (_header _rigidBodyID _deltaTime _position _euler _linear _angular ))

(defmethod opti_msgs::Odom
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rigidBodyID __rigidBodyID) 0)
    ((:deltaTime __deltaTime) 0.0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:euler __euler) (instance geometry_msgs::Vector3 :init))
    ((:linear __linear) (instance geometry_msgs::Vector3 :init))
    ((:angular __angular) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rigidBodyID (round __rigidBodyID))
   (setq _deltaTime (float __deltaTime))
   (setq _position __position)
   (setq _euler __euler)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rigidBodyID
   (&optional __rigidBodyID)
   (if __rigidBodyID (setq _rigidBodyID __rigidBodyID)) _rigidBodyID)
  (:deltaTime
   (&optional __deltaTime)
   (if __deltaTime (setq _deltaTime __deltaTime)) _deltaTime)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:euler
   (&rest __euler)
   (if (keywordp (car __euler))
       (send* _euler __euler)
     (progn
       (if __euler (setq _euler (car __euler)))
       _euler)))
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rigidBodyID
    4
    ;; float64 _deltaTime
    8
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _euler
    (send _euler :serialization-length)
    ;; geometry_msgs/Vector3 _linear
    (send _linear :serialization-length)
    ;; geometry_msgs/Vector3 _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rigidBodyID
       (write-long _rigidBodyID s)
     ;; float64 _deltaTime
       (sys::poke _deltaTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _euler
       (send _euler :serialize s)
     ;; geometry_msgs/Vector3 _linear
       (send _linear :serialize s)
     ;; geometry_msgs/Vector3 _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rigidBodyID
     (setq _rigidBodyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _deltaTime
     (setq _deltaTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _euler
     (send _euler :deserialize buf ptr-) (incf ptr- (send _euler :serialization-length))
   ;; geometry_msgs/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; geometry_msgs/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get opti_msgs::Odom :md5sum-) "eca3ed57d1037c7cecff0230e5e5de39")
(setf (get opti_msgs::Odom :datatype-) "opti_msgs/Odom")
(setf (get opti_msgs::Odom :definition-)
      "Header header
int32 rigidBodyID
float64 deltaTime
geometry_msgs/Vector3 position
geometry_msgs/Vector3 euler
geometry_msgs/Vector3 linear
geometry_msgs/Vector3 angular


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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :opti_msgs/Odom "eca3ed57d1037c7cecff0230e5e5de39")


