(when (locate-library "package")
  (require 'package)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))

  (unless (locate-library "ox")  ; trick to detect the presence of Org 8
    (ignore-errors
      (mapc #'package-install '(org htmlize)))))
