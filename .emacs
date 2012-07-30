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

;; Forcing vertical window split

(setq split-height-threshold most-positive-fixnum)
(setq split-width-threshold 0)
