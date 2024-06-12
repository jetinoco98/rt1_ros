; Auto-generated. Do not edit!


(cl:in-package rt1_pkg-srv)


;//! \htmlinclude RobotToTarget-request.msg.html

(cl:defclass <RobotToTarget-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotToTarget-request (<RobotToTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotToTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotToTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt1_pkg-srv:<RobotToTarget-request> is deprecated: use rt1_pkg-srv:RobotToTarget-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotToTarget-request>) ostream)
  "Serializes a message object of type '<RobotToTarget-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotToTarget-request>) istream)
  "Deserializes a message object of type '<RobotToTarget-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotToTarget-request>)))
  "Returns string type for a service object of type '<RobotToTarget-request>"
  "rt1_pkg/RobotToTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotToTarget-request)))
  "Returns string type for a service object of type 'RobotToTarget-request"
  "rt1_pkg/RobotToTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotToTarget-request>)))
  "Returns md5sum for a message object of type '<RobotToTarget-request>"
  "185aad6ed636881de3d9111fc76b7e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotToTarget-request)))
  "Returns md5sum for a message object of type 'RobotToTarget-request"
  "185aad6ed636881de3d9111fc76b7e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotToTarget-request>)))
  "Returns full string definition for message of type '<RobotToTarget-request>"
  (cl:format cl:nil "# Request part (empty)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotToTarget-request)))
  "Returns full string definition for message of type 'RobotToTarget-request"
  (cl:format cl:nil "# Request part (empty)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotToTarget-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotToTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotToTarget-request
))
;//! \htmlinclude RobotToTarget-response.msg.html

(cl:defclass <RobotToTarget-response> (roslisp-msg-protocol:ros-message)
  ((dx
    :reader dx
    :initarg :dx
    :type cl:float
    :initform 0.0)
   (dy
    :reader dy
    :initarg :dy
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (average_vx
    :reader average_vx
    :initarg :average_vx
    :type cl:float
    :initform 0.0)
   (average_vy
    :reader average_vy
    :initarg :average_vy
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotToTarget-response (<RobotToTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotToTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotToTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt1_pkg-srv:<RobotToTarget-response> is deprecated: use rt1_pkg-srv:RobotToTarget-response instead.")))

(cl:ensure-generic-function 'dx-val :lambda-list '(m))
(cl:defmethod dx-val ((m <RobotToTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-srv:dx-val is deprecated.  Use rt1_pkg-srv:dx instead.")
  (dx m))

(cl:ensure-generic-function 'dy-val :lambda-list '(m))
(cl:defmethod dy-val ((m <RobotToTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-srv:dy-val is deprecated.  Use rt1_pkg-srv:dy instead.")
  (dy m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RobotToTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-srv:distance-val is deprecated.  Use rt1_pkg-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'average_vx-val :lambda-list '(m))
(cl:defmethod average_vx-val ((m <RobotToTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-srv:average_vx-val is deprecated.  Use rt1_pkg-srv:average_vx instead.")
  (average_vx m))

(cl:ensure-generic-function 'average_vy-val :lambda-list '(m))
(cl:defmethod average_vy-val ((m <RobotToTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt1_pkg-srv:average_vy-val is deprecated.  Use rt1_pkg-srv:average_vy instead.")
  (average_vy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotToTarget-response>) ostream)
  "Serializes a message object of type '<RobotToTarget-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'average_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'average_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotToTarget-response>) istream)
  "Deserializes a message object of type '<RobotToTarget-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_vy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotToTarget-response>)))
  "Returns string type for a service object of type '<RobotToTarget-response>"
  "rt1_pkg/RobotToTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotToTarget-response)))
  "Returns string type for a service object of type 'RobotToTarget-response"
  "rt1_pkg/RobotToTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotToTarget-response>)))
  "Returns md5sum for a message object of type '<RobotToTarget-response>"
  "185aad6ed636881de3d9111fc76b7e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotToTarget-response)))
  "Returns md5sum for a message object of type 'RobotToTarget-response"
  "185aad6ed636881de3d9111fc76b7e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotToTarget-response>)))
  "Returns full string definition for message of type '<RobotToTarget-response>"
  (cl:format cl:nil "# Response part~%float32 dx~%float32 dy~%float32 distance~%float32 average_vx~%float32 average_vy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotToTarget-response)))
  "Returns full string definition for message of type 'RobotToTarget-response"
  (cl:format cl:nil "# Response part~%float32 dx~%float32 dy~%float32 distance~%float32 average_vx~%float32 average_vy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotToTarget-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotToTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotToTarget-response
    (cl:cons ':dx (dx msg))
    (cl:cons ':dy (dy msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':average_vx (average_vx msg))
    (cl:cons ':average_vy (average_vy msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotToTarget)))
  'RobotToTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotToTarget)))
  'RobotToTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotToTarget)))
  "Returns string type for a service object of type '<RobotToTarget>"
  "rt1_pkg/RobotToTarget")