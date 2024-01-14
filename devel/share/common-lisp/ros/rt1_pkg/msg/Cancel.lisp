; Auto-generated. Do not edit!


(cl:in-package rt1_pkg-msg)


;//! \htmlinclude Cancel.msg.html

(cl:defclass <Cancel> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Cancel (<Cancel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cancel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cancel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt1_pkg-msg:<Cancel> is deprecated: use rt1_pkg-msg:Cancel instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cancel>) ostream)
  "Serializes a message object of type '<Cancel>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cancel>) istream)
  "Deserializes a message object of type '<Cancel>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cancel>)))
  "Returns string type for a message object of type '<Cancel>"
  "rt1_pkg/Cancel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cancel)))
  "Returns string type for a message object of type 'Cancel"
  "rt1_pkg/Cancel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cancel>)))
  "Returns md5sum for a message object of type '<Cancel>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cancel)))
  "Returns md5sum for a message object of type 'Cancel"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cancel>)))
  "Returns full string definition for message of type '<Cancel>"
  (cl:format cl:nil "#blank~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cancel)))
  "Returns full string definition for message of type 'Cancel"
  (cl:format cl:nil "#blank~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cancel>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cancel>))
  "Converts a ROS message object to a list"
  (cl:list 'Cancel
))
