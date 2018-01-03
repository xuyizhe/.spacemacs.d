;;; packages.el --- xuyizhe-misc layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Yizhe Xu
;;
;; Author: Yizhe Xu
;; URL: https://github.com/xuyizhe/.spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst xuyizhe-misc-packages
  '(markdown-preview-mode
    sql))

;; https://github.com/ancane/markdown-preview-mode#remote-access
;; Markdown preview websocket server port: 7379
;; Markdown preview http server port: 9000
(defun xuyizhe-misc/init-markdown-preview-mode ()
  (use-package markdown-preview-mode
    :init
    (setq markdown-preview-host "0.0.0.0")
    (setq markdown-preview-http-host "0.0.0.0")
    (setq markdown-preview-auto-open 'nil)))

(defun xuyizhe-misc/post-init-sql ()
  (setq sql-postgres-login-params
        '((user :default "postgres")
          (database :default "postgres")
          (server :default "localhost")
          (port :default 5432))))
