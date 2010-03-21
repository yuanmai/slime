;;; This file is intended to be loaded by an implementation to
;;; get a running swank server
;;; e.g. sbcl --load start-swank.lisp
;;;
;;; Default port is 4005
;;; Default encoding is "iso-latin-1-unix"
;;;  see Emacs variable `slime-net-valid-coding-systems' for possible values.

;;; For additional swank-side configurations see
;;; 6.2 section section of the Slime user manual.

(load (merge-pathnames "swank-loader.lisp" *load-truename*))

(swank-loader:init)

(swank:create-server :port 4005
                     :coding-system "iso-latin-1-unix"

                     ;; if non-nil the connection won't be closed
                     ;; after connecting
                     :dont-close nil)
