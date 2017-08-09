; Auto-generated. Do not edit!


(cl:in-package firstpack-msg)


;//! \htmlinclude MyMessage.msg.html

(cl:defclass <MyMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass MyMessage (<MyMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name firstpack-msg:<MyMessage> is deprecated: use firstpack-msg:MyMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader firstpack-msg:header-val is deprecated.  Use firstpack-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader firstpack-msg:value-val is deprecated.  Use firstpack-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <MyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader firstpack-msg:text-val is deprecated.  Use firstpack-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyMessage>) ostream)
  "Serializes a message object of type '<MyMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyMessage>) istream)
  "Deserializes a message object of type '<MyMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyMessage>)))
  "Returns string type for a message object of type '<MyMessage>"
  "firstpack/MyMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyMessage)))
  "Returns string type for a message object of type 'MyMessage"
  "firstpack/MyMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyMessage>)))
  "Returns md5sum for a message object of type '<MyMessage>"
  "23908a647d7eb6d73d4524eb9bab5c24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyMessage)))
  "Returns md5sum for a message object of type 'MyMessage"
  "23908a647d7eb6d73d4524eb9bab5c24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyMessage>)))
  "Returns full string definition for message of type '<MyMessage>"
  (cl:format cl:nil "Header header~%uint8 value~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyMessage)))
  "Returns full string definition for message of type 'MyMessage"
  (cl:format cl:nil "Header header~%uint8 value~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'MyMessage
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
    (cl:cons ':text (text msg))
))
