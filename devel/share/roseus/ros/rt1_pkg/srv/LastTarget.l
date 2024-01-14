;; Auto-generated. Do not edit!


(when (boundp 'rt1_pkg::LastTarget)
  (if (not (find-package "RT1_PKG"))
    (make-package "RT1_PKG"))
  (shadow 'LastTarget (find-package "RT1_PKG")))
(unless (find-package "RT1_PKG::LASTTARGET")
  (make-package "RT1_PKG::LASTTARGET"))
(unless (find-package "RT1_PKG::LASTTARGETREQUEST")
  (make-package "RT1_PKG::LASTTARGETREQUEST"))
(unless (find-package "RT1_PKG::LASTTARGETRESPONSE")
  (make-package "RT1_PKG::LASTTARGETRESPONSE"))

(in-package "ROS")





(defclass rt1_pkg::LastTargetRequest
  :super ros::object
  :slots ())

(defmethod rt1_pkg::LastTargetRequest
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

(defclass rt1_pkg::LastTargetResponse
  :super ros::object
  :slots (_x _y ))

(defmethod rt1_pkg::LastTargetResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rt1_pkg::LastTarget
  :super ros::object
  :slots ())

(setf (get rt1_pkg::LastTarget :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get rt1_pkg::LastTarget :datatype-) "rt1_pkg/LastTarget")
(setf (get rt1_pkg::LastTarget :request) rt1_pkg::LastTargetRequest)
(setf (get rt1_pkg::LastTarget :response) rt1_pkg::LastTargetResponse)

(defmethod rt1_pkg::LastTargetRequest
  (:response () (instance rt1_pkg::LastTargetResponse :init)))

(setf (get rt1_pkg::LastTargetRequest :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get rt1_pkg::LastTargetRequest :datatype-) "rt1_pkg/LastTargetRequest")
(setf (get rt1_pkg::LastTargetRequest :definition-)
      "---
float32 x
float32 y

")

(setf (get rt1_pkg::LastTargetResponse :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get rt1_pkg::LastTargetResponse :datatype-) "rt1_pkg/LastTargetResponse")
(setf (get rt1_pkg::LastTargetResponse :definition-)
      "---
float32 x
float32 y

")



(provide :rt1_pkg/LastTarget "ff8d7d66dd3e4b731ef14a45d38888b6")


