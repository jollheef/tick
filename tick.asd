;;;; This file is part of the tick application, released under
;;;; GNU General Public License, Version 3.0
;;;; See file COPYING for details.
;;;;
;;;; Author: Klementyev Mikhail <jollheef@riseup.net>

(asdf:defsystem #:tick
  :description "Simple time tick"
  :author "Mikhail Klementyev <jollheef@riseup.net>"
  :license "GPLv3"
  :depends-on (#:date-calc)
  :components ((:static-file "COPYING")
	       (:static-file "README")
	       (:file "package")
	       (:file "tick")))
