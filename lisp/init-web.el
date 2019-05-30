;;; init-local.el --- Local -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package
 web-mode
 :ensure t
 :init
 (add-to-list 'auto-mode-alist '("\\.tag\\'" . web-mode))
 (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
 :config
 (setq web-mode-markup-indent-offset 2)
 (setq web-mode-css-indent-offset 2)
 (setq web-mode-code-indent-offset 2)
 (setq web-mode-enable-current-element-highlight t)
 (setq web-mode-dom-errors-show t)
 (setq web-mode-enable-auto-closing t)
 (setq web-mode-enable-auto-pairing t)
 (setq web-mode-enable-css-colorization t)
 (setq web-mode-content-types-alist '(("vue" . "\\.vue\\'")))
 (use-package company-web :ensure t)
 (add-hook 'web-mode-hook (lambda() (cond ((equal web-mode-content-type "html")
                                      (web-html-setup))
                                     ((member web-mode-content-type '("vue"))
                                      (web-vue-setup))))))

(use-package prettier-js
             :ensure t
             :hook ((js2-mode . prettier-js-mode)
                    (typescript-mode . prettier-js-mode)
                    (css-mode . prettier-js-mode)
                    (web-mode . prettier-js-mode))
             :config
             (setq prettier-js-show-errors "echo")
             (setq prettier-js-args
                   '("--print-width" "120"
                     "--trailing-comma" "es5"
                     "--single-quote" "true"
                     "--arrow-parens" "always")))

(defun web-html-setup()
  "Setup for web-mode html files."
  (message "web-mode use html related setup")
  (flycheck-add-mode 'html-tidy 'web-mode)
  (flycheck-select-checker 'html-tidy)
  (add-to-list (make-local-variable 'company-backends)
               '(company-web-html company-files company-css company-capf company-dabbrev))
  (add-hook 'before-save-hook #'sgml-pretty-print))

(defun web-vue-setup ()
  "Setup for js related."
  (message "web-mode use vue related setup")
  (setup-tide-mode)
  (prettier-js-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-select-checker 'javascript-eslint)
  (use-eslint-from-node-modules)
  (add-to-list (make-local-variable 'company-backends)
               '(comany-tide company-web-html company-css company-files)))

(defun use-eslint-from-node-modules ()
  "Use local eslint from node_modules before global."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'use-eslint-from-node-modules)

(provide 'init-web)
;;; init-web.el ends here
