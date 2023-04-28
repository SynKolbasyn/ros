;; Auto-generated. Do not edit!


(when (boundp 'test_service_client::num)
  (if (not (find-package "TEST_SERVICE_CLIENT"))
    (make-package "TEST_SERVICE_CLIENT"))
  (shadow 'num (find-package "TEST_SERVICE_CLIENT")))
(unless (find-package "TEST_SERVICE_CLIENT::NUM")
  (make-package "TEST_SERVICE_CLIENT::NUM"))

(in-package "ROS")
;;//! \htmlinclude num.msg.html


(defclass test_service_client::num
  :super ros::object
  :slots (_num ))

(defmethod test_service_client::num
  (:init
   (&key
    ((:num __num) 0.0)
    )
   (send-super :init)
   (setq _num (float __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; float64 _num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num
       (sys::poke _num (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num
     (setq _num (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get test_service_client::num :md5sum-) "f942a3e0cbd340847b2a0e5b31a783fe")
(setf (get test_service_client::num :datatype-) "test_service_client/num")
(setf (get test_service_client::num :definition-)
      "float64 num


")



(provide :test_service_client/num "f942a3e0cbd340847b2a0e5b31a783fe")


