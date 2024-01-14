;; Auto-generated. Do not edit!


(when (boundp 'rt1_pkg::Cancel)
  (if (not (find-package "RT1_PKG"))
    (make-package "RT1_PKG"))
  (shadow 'Cancel (find-package "RT1_PKG")))
(unless (find-package "RT1_PKG::CANCEL")
  (make-package "RT1_PKG::CANCEL"))

(in-package "ROS")
;;//! \htmlinclude Cancel.msg.html


(defclass rt1_pkg::Cancel
  :super ros::object
  :slots ())

(defmethod rt1_pkg::Cancel
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get rt1_pkg::Cancel :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rt1_pkg::Cancel :datatype-) "rt1_pkg/Cancel")
(setf (get rt1_pkg::Cancel :definition-)
      "#blank

")



(provide :rt1_pkg/Cancel "d41d8cd98f00b204e9800998ecf8427e")


