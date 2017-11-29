(package-initialize)
(setq user-full-name "Regina Pogosian"
      user-mail-address "regina@pogosian.com"
      calendar-location-name "College Park, MD")

(set-default 'cursor-type 'hbar)

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

(defun fill-setup()
  "sets the column to 80 and sets minor mode auto-fill-mode"
  (set-fill-column 80)
  (auto-fill-mode t))

(add-hook 'org-mode-hook 'fill-setup)

;;basics all users should set
(global-linum-mode t)
(setq-default c-basic-offset 3)
(fset 'yes-or-no-p 'y-or-n-p)

;;company mode
(add-hook 'after-init-hook 'global-company-mode)

;;AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
;;(setq TeX-PDF-mode t)

;;active babel languages


(require 'tex)
(TeX-global-PDF-mode t)

(setq-default TeX-master nil)

;;(interactive)
;;(let ((other-window (next-window (selected-window) 'no-minibuf)))
;;  (let ((other-window-buffer (window-buffer other-window))
;;	(other-window-hscroll (window-hscroll other-window))
;;	(other-window-point (window-point other-window))
;;	(other-window-start (window-start other-window)))
;;    (set-window-buffer other-window (current-buffer))
;;    (set-window-hscroll other-window (window-hscroll (selected-window)))
;;    (set-window-pointer other-window (point))
;;    (set-window-start other-window (window-start (selected-window)))
;;    (set-window-buffer (selected-window) other-window-buffer)
;;    (set-window-hscroll (selected-window) other-window-hscroll)
;;    (set-window-point (selected-window) other-window-point)
;;    (set-window-start (selected-window) other-window-start))
;;  (select-window other-window))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
