
(cl:in-package :asdf)

(defsystem "rt1_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotPosVel" :depends-on ("_package_RobotPosVel"))
    (:file "_package_RobotPosVel" :depends-on ("_package"))
    (:file "TargetPos" :depends-on ("_package_TargetPos"))
    (:file "_package_TargetPos" :depends-on ("_package"))
  ))