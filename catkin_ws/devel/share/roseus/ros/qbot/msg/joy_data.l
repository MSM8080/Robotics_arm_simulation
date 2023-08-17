;; Auto-generated. Do not edit!


(when (boundp 'qbot::joy_data)
  (if (not (find-package "QBOT"))
    (make-package "QBOT"))
  (shadow 'joy_data (find-package "QBOT")))
(unless (find-package "QBOT::JOY_DATA")
  (make-package "QBOT::JOY_DATA"))

(in-package "ROS")
;;//! \htmlinclude joy_data.msg.html


(defclass qbot::joy_data
  :super ros::object
  :slots (_Data ))

(defmethod qbot::joy_data
  (:init
   (&key
    ((:Data __Data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _Data __Data)
   self)
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
  (:serialization-length
   ()
   (+
    ;; string[] _Data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _Data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _Data
     (write-long (length _Data) s)
     (dolist (elem _Data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _Data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _Data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get qbot::joy_data :md5sum-) "2d226b1a015f23e10eb1a23f5775c959")
(setf (get qbot::joy_data :datatype-) "qbot/joy_data")
(setf (get qbot::joy_data :definition-)
      "string[] Data


")



(provide :qbot/joy_data "2d226b1a015f23e10eb1a23f5775c959")


