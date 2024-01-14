; Auto-generated. Do not edit!


(cl:in-package rt1_pkg-msg)


;//! \htmlinclude TargetPos.msg.html

(cl:defclass <TargetPos> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass TargetPos (<TargetPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt1_pkg-msg:<TargetPos> is deprecated: use rt1_pkg-msg:TargetPos instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TargetPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:x-val is deprecated.  Use rt1_pkg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TargetPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:y-val is deprecated.  Use rt1_pkg-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPos>) ostream)
  "Serializes a message object of type '<TargetPos>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPos>) istream)
  "Deserializes a message object of type '<TargetPos>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPos>)))
  "Returns string type for a message object of type '<TargetPos>"
  "rt1_pkg/TargetPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPos)))
  "Returns string type for a message object of type 'TargetPos"
  "rt1_pkg/TargetPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPos>)))
  "Returns md5sum for a message object of type '<TargetPos>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPos)))
  "Returns md5sum for a message object of type 'TargetPos"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPos>)))
  "Returns full string definition for message of type '<TargetPos>"
  (cl:format cl:nil "#Target's position~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPos)))
  "Returns full string definition for message of type 'TargetPos"
  (cl:format cl:nil "#Target's position~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPos>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPos>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPos
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
