;;;; This file is part of the tick application, released under
;;;; GNU General Public License, Version 3.0
;;;; See file COPYING for details.
;;;;
;;;; Author: Klementyev Mikhail <jollheef@riseup.net>

(in-package #:tick)

(defun tick-s (lstart-time)
  (let ((lcurrent-time (multiple-value-list (date-calc:localtime))))
    (let ((hs (nth 3 lstart-time))
	  (ms (nth 4 lstart-time))
	  (ss (nth 5 lstart-time))
	  (hc (nth 3 lcurrent-time))
	  (mc (nth 4 lcurrent-time))
	  (sc (nth 5 lcurrent-time)))
      (date-calc:delta-hms hs ms ss hc mc sc))))

(defmacro ltick ()
  `(cdr (multiple-value-list (tick-s lstart-time))))

(defmacro tick ()
  `(let ((l-of-tick
	  (cdr (multiple-value-list (tick-s lstart-time)))))
     (format nil "~2,'0D:~2,'0D:~2,'0D"
	     (nth 0 l-of-tick)
	     (nth 1 l-of-tick)
	     (nth 2 l-of-tick))))

(defmacro with-tick (&body body)
  `(let ((lstart-time (multiple-value-list (date-calc:localtime))))
     ,@body))

(defun timer-tick ()
  (with-tick
   (tick)))
