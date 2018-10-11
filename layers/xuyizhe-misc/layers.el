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
 '(sql
   (chinese :variables
            chinese-enable-fcitx nil
            chinese-enable-youdao-dict t)
   ))
