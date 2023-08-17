; Auto-generated. Do not edit!


(cl:in-package qbot-msg)


;//! \htmlinclude joy_data.msg.html

(cl:defclass <joy_data> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass joy_data (<joy_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joy_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joy_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qbot-msg:<joy_data> is deprecated: use qbot-msg:joy_data instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <joy_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qbot-msg:Data-val is deprecated.  Use qbot-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joy_data>) ostream)
  "Serializes a message object of type '<joy_data>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'Data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joy_data>) istream)
  "Deserializes a message object of type '<joy_data>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joy_data>)))
  "Returns string type for a message object of type '<joy_data>"
  "qbot/joy_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joy_data)))
  "Returns string type for a message object of type 'joy_data"
  "qbot/joy_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joy_data>)))
  "Returns md5sum for a message object of type '<joy_data>"
  "2d226b1a015f23e10eb1a23f5775c959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joy_data)))
  "Returns md5sum for a message object of type 'joy_data"
  "2d226b1a015f23e10eb1a23f5775c959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joy_data>)))
  "Returns full string definition for message of type '<joy_data>"
  (cl:format cl:nil "string[] Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joy_data)))
  "Returns full string definition for message of type 'joy_data"
  (cl:format cl:nil "string[] Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joy_data>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joy_data>))
  "Converts a ROS message object to a list"
  (cl:list 'joy_data
    (cl:cons ':Data (Data msg))
))
