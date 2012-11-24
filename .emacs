;; C onfiguration

(add-hook 'c-mode-base-hook 'my-c-mode-hook)

(defun my-c-mode-hook ()
	(define-key c-mode-base-map (kbd "TAB") 'self-insert-command))

;; Haskell configuration

(load "haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'font-lock-mode)

;; Latex configuration

; 1. Auctex:
;    Formatting with C-c C-q C-s
;    Preview with C-c C-p C-s
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

; 2. Flymake:
;    Syntax check
;(require 'flymake)

;(defun flymake-get-tex-args (file-name)
;(list "pdflatex"
;(list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))

;(add-hook 'LaTeX-mode-hook 'flymake-mode)

; 3. aspell spell checking
(setq ispell-program-name "aspell")
(setq ispell-dictionary "en_GB")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-flyspell)

;; Forcing vertical window split

(setq split-height-threshold most-positive-fixnum)
(setq split-width-threshold 0)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(inhibit-startup-screen t))

;; Create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
