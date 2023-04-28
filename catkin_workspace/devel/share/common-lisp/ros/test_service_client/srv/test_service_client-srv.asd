
(cl:in-package :asdf)

(defsystem "test_service_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sum_two_nums" :depends-on ("_package_sum_two_nums"))
    (:file "_package_sum_two_nums" :depends-on ("_package"))
  ))