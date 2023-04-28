;; Auto-generated. Do not edit!


(when (boundp 'test_service_client::sum_two_nums)
  (if (not (find-package "TEST_SERVICE_CLIENT"))
    (make-package "TEST_SERVICE_CLIENT"))
  (shadow 'sum_two_nums (find-package "TEST_SERVICE_CLIENT")))
(unless (find-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMS")
  (make-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMS"))
(unless (find-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMSREQUEST")
  (make-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMSREQUEST"))
(unless (find-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMSRESPONSE")
  (make-package "TEST_SERVICE_CLIENT::SUM_TWO_NUMSRESPONSE"))

(in-package "ROS")





(defclass test_service_client::sum_two_numsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod test_service_client::sum_two_numsRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test_service_client::sum_two_numsResponse
  :super ros::object
  :slots (_sum ))

(defmethod test_service_client::sum_two_numsResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sum
     (setq _sum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test_service_client::sum_two_nums
  :super ros::object
  :slots ())

(setf (get test_service_client::sum_two_nums :md5sum-) "eb3958e9614615192c3e63bd0b5590df")
(setf (get test_service_client::sum_two_nums :datatype-) "test_service_client/sum_two_nums")
(setf (get test_service_client::sum_two_nums :request) test_service_client::sum_two_numsRequest)
(setf (get test_service_client::sum_two_nums :response) test_service_client::sum_two_numsResponse)

(defmethod test_service_client::sum_two_numsRequest
  (:response () (instance test_service_client::sum_two_numsResponse :init)))

(setf (get test_service_client::sum_two_numsRequest :md5sum-) "eb3958e9614615192c3e63bd0b5590df")
(setf (get test_service_client::sum_two_numsRequest :datatype-) "test_service_client/sum_two_numsRequest")
(setf (get test_service_client::sum_two_numsRequest :definition-)
      "float64 a
float64 b
---
float64 sum


")

(setf (get test_service_client::sum_two_numsResponse :md5sum-) "eb3958e9614615192c3e63bd0b5590df")
(setf (get test_service_client::sum_two_numsResponse :datatype-) "test_service_client/sum_two_numsResponse")
(setf (get test_service_client::sum_two_numsResponse :definition-)
      "float64 a
float64 b
---
float64 sum


")



(provide :test_service_client/sum_two_nums "eb3958e9614615192c3e63bd0b5590df")


