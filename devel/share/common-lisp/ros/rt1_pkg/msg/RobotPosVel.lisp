; Auto-generated. Do not edit!


(cl:in-package rt1_pkg-msg)


;//! \htmlinclude RobotPosVel.msg.html

(cl:defclass <RobotPosVel> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotPosVel (<RobotPosVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPosVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPosVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt1_pkg-msg:<RobotPosVel> is deprecated: use rt1_pkg-msg:RobotPosVel instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RobotPosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:x-val is deprecated.  Use rt1_pkg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RobotPosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:y-val is deprecated.  Use rt1_pkg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <RobotPosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:vx-val is deprecated.  Use rt1_pkg-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <RobotPosVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-msg:vy-val is deprecated.  Use rt1_pkg-msg:vy instead.")
  (vy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPosVel>) ostream)
  "Serializes a message object of type '<RobotPosVel>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPosVel>) istream)
  "Deserializes a message object of type '<RobotPosVel>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPosVel>)))
  "Returns string type for a message object of type '<RobotPosVel>"
  "rt1_pkg/RobotPosVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPosVel)))
  "Returns string type for a message object of type 'RobotPosVel"
  "rt1_pkg/RobotPosVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPosVel>)))
  "Returns md5sum for a message object of type '<RobotPosVel>"
  "2af08925b9da4c99c24669eae33385e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPosVel)))
  "Returns md5sum for a message object of type 'RobotPosVel"
  "2af08925b9da4c99c24669eae33385e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPosVel>)))
  "Returns full string definition for message of type '<RobotPosVel>"
  (cl:format cl:nil "#Position~%float32 x~%float32 y~%#Velocity~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPosVel)))
  "Returns full string definition for message of type 'RobotPosVel"
  (cl:format cl:nil "#Position~%float32 x~%float32 y~%#Velocity~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPosVel>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPosVel>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPosVel
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
))
