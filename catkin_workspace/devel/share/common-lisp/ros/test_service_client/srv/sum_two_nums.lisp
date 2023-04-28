; Auto-generated. Do not edit!


(cl:in-package test_service_client-srv)


;//! \htmlinclude sum_two_nums-request.msg.html

(cl:defclass <sum_two_nums-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass sum_two_nums-request (<sum_two_nums-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum_two_nums-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum_two_nums-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service_client-srv:<sum_two_nums-request> is deprecated: use test_service_client-srv:sum_two_nums-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <sum_two_nums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:a-val is deprecated.  Use test_service_client-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <sum_two_nums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:b-val is deprecated.  Use test_service_client-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum_two_nums-request>) ostream)
  "Serializes a message object of type '<sum_two_nums-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum_two_nums-request>) istream)
  "Deserializes a message object of type '<sum_two_nums-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum_two_nums-request>)))
  "Returns string type for a service object of type '<sum_two_nums-request>"
  "test_service_client/sum_two_numsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_nums-request)))
  "Returns string type for a service object of type 'sum_two_nums-request"
  "test_service_client/sum_two_numsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum_two_nums-request>)))
  "Returns md5sum for a message object of type '<sum_two_nums-request>"
  "eb3958e9614615192c3e63bd0b5590df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum_two_nums-request)))
  "Returns md5sum for a message object of type 'sum_two_nums-request"
  "eb3958e9614615192c3e63bd0b5590df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum_two_nums-request>)))
  "Returns full string definition for message of type '<sum_two_nums-request>"
  (cl:format cl:nil "float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum_two_nums-request)))
  "Returns full string definition for message of type 'sum_two_nums-request"
  (cl:format cl:nil "float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum_two_nums-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum_two_nums-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sum_two_nums-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude sum_two_nums-response.msg.html

(cl:defclass <sum_two_nums-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:float
    :initform 0.0))
)

(cl:defclass sum_two_nums-response (<sum_two_nums-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sum_two_nums-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sum_two_nums-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service_client-srv:<sum_two_nums-response> is deprecated: use test_service_client-srv:sum_two_nums-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <sum_two_nums-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:sum-val is deprecated.  Use test_service_client-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sum_two_nums-response>) ostream)
  "Serializes a message object of type '<sum_two_nums-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sum_two_nums-response>) istream)
  "Deserializes a message object of type '<sum_two_nums-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sum) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sum_two_nums-response>)))
  "Returns string type for a service object of type '<sum_two_nums-response>"
  "test_service_client/sum_two_numsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_nums-response)))
  "Returns string type for a service object of type 'sum_two_nums-response"
  "test_service_client/sum_two_numsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sum_two_nums-response>)))
  "Returns md5sum for a message object of type '<sum_two_nums-response>"
  "eb3958e9614615192c3e63bd0b5590df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sum_two_nums-response)))
  "Returns md5sum for a message object of type 'sum_two_nums-response"
  "eb3958e9614615192c3e63bd0b5590df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sum_two_nums-response>)))
  "Returns full string definition for message of type '<sum_two_nums-response>"
  (cl:format cl:nil "float64 sum~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sum_two_nums-response)))
  "Returns full string definition for message of type 'sum_two_nums-response"
  (cl:format cl:nil "float64 sum~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sum_two_nums-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sum_two_nums-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sum_two_nums-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sum_two_nums)))
  'sum_two_nums-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sum_two_nums)))
  'sum_two_nums-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sum_two_nums)))
  "Returns string type for a service object of type '<sum_two_nums>"
  "test_service_client/sum_two_nums")