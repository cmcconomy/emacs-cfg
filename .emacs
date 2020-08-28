;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
	                  '("melpa" . "http://melpa.org/packages/"))

(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(package-selected-packages (quote (solarized-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Key Mappings for org
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; Key mapping because ctrl-backspace in a terminal is ^H (!)
(global-set-key (kbd "C-h") 'backward-kill-word)



(load-theme 'solarized-dark t)

;; Scan Agenda
(setq org-agenda-files '("~/emacs-docs"))

;; Word Wrap on by default. But this sucks for tables.
(global-visual-line-mode t)
;; Toggle Word Wrap
(define-key org-mode-map "\M-q" 'global-visual-line-mode)

;; Backspace.. as backspace!
(normal-erase-is-backspace-mode 0)
