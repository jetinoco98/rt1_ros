;; Auto-generated. Do not edit!


(when (boundp 'rt1_pkg::RobotPosVel)
  (if (not (find-package "RT1_PKG"))
    (make-package "RT1_PKG"))
  (shadow 'RobotPosVel (find-package "RT1_PKG")))
(unless (find-package "RT1_PKG::ROBOTPOSVEL")
  (make-package "RT1_PKG::ROBOTPOSVEL"))

(in-package "ROS")
;;//! \htmlinclude RobotPosVel.msg.html


(defclass rt1_pkg::RobotPosVel
  :super ros::object
  :slots (_x _y _vx _vy ))

(defmethod rt1_pkg::RobotPosVel
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _vx
    4
    ;; float32 _vy
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
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rt1_pkg::RobotPosVel :md5sum-) "2af08925b9da4c99c24669eae33385e8")
(setf (get rt1_pkg::RobotPosVel :datatype-) "rt1_pkg/RobotPosVel")
(setf (get rt1_pkg::RobotPosVel :definition-)
      "#Position
float32 x
float32 y
#Velocity
float32 vx
float32 vy

")



(provide :rt1_pkg/RobotPosVel "2af08925b9da4c99c24669eae33385e8")


