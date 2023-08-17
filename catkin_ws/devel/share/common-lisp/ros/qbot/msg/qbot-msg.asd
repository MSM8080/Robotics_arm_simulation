
(cl:in-package :asdf)

(defsystem "qbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joy_data" :depends-on ("_package_joy_data"))
    (:file "_package_joy_data" :depends-on ("_package"))
  ))