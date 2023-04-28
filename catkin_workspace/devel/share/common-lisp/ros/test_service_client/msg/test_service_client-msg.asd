
(cl:in-package :asdf)

(defsystem "test_service_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "num" :depends-on ("_package_num"))
    (:file "_package_num" :depends-on ("_package"))
  ))