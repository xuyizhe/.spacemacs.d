;;; layers.el --- xuyizhe-misc layer layers file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Yizhe Xu
;;
;; Author: Yizhe Xu <barrenbass@gmail.com>
;; URL: https://github.com/xuyizhe/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Prerequisites

(configuration-layer/declare-layer
 '(
   ;; fsharp
   ;; (markdown :variables
   ;;           markdown-live-preview-engine 'vmd
   ;;           markdown-mmm-auto-modes '("c" "c++" "javascript" "python" "typescript" ("elisp" "emacs-lisp")))
   (sql :variables
        sql-capitalize-keywords t
        sql-capitalize-keywords-blacklist '("name" "varchar")
        sql-auto-indent t)))
