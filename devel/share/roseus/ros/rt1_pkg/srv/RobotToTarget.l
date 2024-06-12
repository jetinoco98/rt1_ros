;; Auto-generated. Do not edit!


(when (boundp 'rt1_pkg::RobotToTarget)
  (if (not (find-package "RT1_PKG"))
    (make-package "RT1_PKG"))
  (shadow 'RobotToTarget (find-package "RT1_PKG")))
(unless (find-package "RT1_PKG::ROBOTTOTARGET")
  (make-package "RT1_PKG::ROBOTTOTARGET"))
(unless (find-package "RT1_PKG::ROBOTTOTARGETREQUEST")
  (make-package "RT1_PKG::ROBOTTOTARGETREQUEST"))
(unless (find-package "RT1_PKG::ROBOTTOTARGETRESPONSE")
  (make-package "RT1_PKG::ROBOTTOTARGETRESPONSE"))

(in-package "ROS")





(defclass rt1_pkg::RobotToTargetRequest
  :super ros::object
  :slots ())

(defmethod rt1_pkg::RobotToTargetRequest
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

(defclass rt1_pkg::RobotToTargetResponse
  :super ros::object
  :slots (_dx _dy _distance _average_vx _average_vy ))

(defmethod rt1_pkg::RobotToTargetResponse
  (:init
   (&key
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    ((:distance __distance) 0.0)
    ((:average_vx __average_vx) 0.0)
    ((:average_vy __average_vy) 0.0)
    )
   (send-super :init)
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   (setq _distance (float __distance))
   (setq _average_vx (float __average_vx))
   (setq _average_vy (float __average_vy))
   self)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:average_vx
   (&optional __average_vx)
   (if __average_vx (setq _average_vx __average_vx)) _average_vx)
  (:average_vy
   (&optional __average_vy)
   (if __average_vy (setq _average_vy __average_vy)) _average_vy)
  (:serialization-length
   ()
   (+
    ;; float32 _dx
    4
    ;; float32 _dy
    4
    ;; float32 _distance
    4
    ;; float32 _average_vx
    4
    ;; float32 _average_vy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _average_vx
       (sys::poke _average_vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _average_vy
       (sys::poke _average_vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dx
     (setq _dx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dy
     (setq _dy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _average_vx
     (setq _average_vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _average_vy
     (setq _average_vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rt1_pkg::RobotToTarget
  :super ros::object
  :slots ())

(setf (get rt1_pkg::RobotToTarget :md5sum-) "185aad6ed636881de3d9111fc76b7e00")
(setf (get rt1_pkg::RobotToTarget :datatype-) "rt1_pkg/RobotToTarget")
(setf (get rt1_pkg::RobotToTarget :request) rt1_pkg::RobotToTargetRequest)
(setf (get rt1_pkg::RobotToTarget :response) rt1_pkg::RobotToTargetResponse)

(defmethod rt1_pkg::RobotToTargetRequest
  (:response () (instance rt1_pkg::RobotToTargetResponse :init)))

(setf (get rt1_pkg::RobotToTargetRequest :md5sum-) "185aad6ed636881de3d9111fc76b7e00")
(setf (get rt1_pkg::RobotToTargetRequest :datatype-) "rt1_pkg/RobotToTargetRequest")
(setf (get rt1_pkg::RobotToTargetRequest :definition-)
      "# Request part (empty)
---
# Response part
float32 dx
float32 dy
float32 distance
float32 average_vx
float32 average_vy

")

(setf (get rt1_pkg::RobotToTargetResponse :md5sum-) "185aad6ed636881de3d9111fc76b7e00")
(setf (get rt1_pkg::RobotToTargetResponse :datatype-) "rt1_pkg/RobotToTargetResponse")
(setf (get rt1_pkg::RobotToTargetResponse :definition-)
      "# Request part (empty)
---
# Response part
float32 dx
float32 dy
float32 distance
float32 average_vx
float32 average_vy

")



(provide :rt1_pkg/RobotToTarget "185aad6ed636881de3d9111fc76b7e00")


