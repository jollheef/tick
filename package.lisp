;;;; This file is part of the tick application, released under
;;;; GNU General Public License, Version 3.0
;;;; See file COPYING for details.
;;;;
;;;; Author: Klementyev Mikhail <jollheef@riseup.net>

(defpackage #:tick
  (:use #:cl
	#:date-calc)
  (:export #:with-tick
	   #:tick
	   #:ltick))
