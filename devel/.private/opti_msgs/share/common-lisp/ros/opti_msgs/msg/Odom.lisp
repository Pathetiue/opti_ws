; Auto-generated. Do not edit!


(cl:in-package opti_msgs-msg)


;//! \htmlinclude Odom.msg.html

(cl:defclass <Odom> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rigidBodyID
    :reader rigidBodyID
    :initarg :rigidBodyID
    :type cl:integer
    :initform 0)
   (deltaTime
    :reader deltaTime
    :initarg :deltaTime
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (euler
    :reader euler
    :initarg :euler
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear
    :reader linear
    :initarg :linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Odom (<Odom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opti_msgs-msg:<Odom> is deprecated: use opti_msgs-msg:Odom instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:header-val is deprecated.  Use opti_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rigidBodyID-val :lambda-list '(m))
(cl:defmethod rigidBodyID-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:rigidBodyID-val is deprecated.  Use opti_msgs-msg:rigidBodyID instead.")
  (rigidBodyID m))

(cl:ensure-generic-function 'deltaTime-val :lambda-list '(m))
(cl:defmethod deltaTime-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:deltaTime-val is deprecated.  Use opti_msgs-msg:deltaTime instead.")
  (deltaTime m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:position-val is deprecated.  Use opti_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'euler-val :lambda-list '(m))
(cl:defmethod euler-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:euler-val is deprecated.  Use opti_msgs-msg:euler instead.")
  (euler m))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:linear-val is deprecated.  Use opti_msgs-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Odom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opti_msgs-msg:angular-val is deprecated.  Use opti_msgs-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odom>) ostream)
  "Serializes a message object of type '<Odom>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rigidBodyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'deltaTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odom>) istream)
  "Deserializes a message object of type '<Odom>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rigidBodyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deltaTime) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odom>)))
  "Returns string type for a message object of type '<Odom>"
  "opti_msgs/Odom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odom)))
  "Returns string type for a message object of type 'Odom"
  "opti_msgs/Odom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odom>)))
  "Returns md5sum for a message object of type '<Odom>"
  "eca3ed57d1037c7cecff0230e5e5de39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odom)))
  "Returns md5sum for a message object of type 'Odom"
  "eca3ed57d1037c7cecff0230e5e5de39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odom>)))
  "Returns full string definition for message of type '<Odom>"
  (cl:format cl:nil "Header header~%int32 rigidBodyID~%float64 deltaTime~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 euler~%geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odom)))
  "Returns full string definition for message of type 'Odom"
  (cl:format cl:nil "Header header~%int32 rigidBodyID~%float64 deltaTime~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 euler~%geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odom>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odom>))
  "Converts a ROS message object to a list"
  (cl:list 'Odom
    (cl:cons ':header (header msg))
    (cl:cons ':rigidBodyID (rigidBodyID msg))
    (cl:cons ':deltaTime (deltaTime msg))
    (cl:cons ':position (position msg))
    (cl:cons ':euler (euler msg))
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
