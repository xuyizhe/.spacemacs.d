(push "~/.spacemacs.d/lisp" load-path)

(require 'init-poet)
;; (require 'init-eclim)

;; (global-company-mode)

;; Replace swiper with ido
(global-undo-tree-mode 0)

(setq racer-rust-src-path
      (concat (string-trim
               (shell-command-to-string "rustc --print sysroot"))
              "/lib/rustlib/src/rust/src"))

(provide 'user-config)
