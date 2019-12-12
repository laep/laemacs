;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" default)))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice (quote remember-notes))
 '(package-selected-packages
   (quote
    (solarized-theme ox-reveal nlinum-relative org-plus-contrib org org-journal evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages-archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;; Plugins
(require 'org)
(require 'evil)
;(require 'nlinum-relative)
(require 'ox-reveal)
(require 'remember)

;; Evil Configurations
(evil-mode 1)

;; nlinum-relative configurations
;(nlinum-relative-setup-evil)                    ;; setup for evil
;(add-hook 'prog-mode-hook 'nlinum-relative-mode)
;(setq nlinum-relative-redisplay-delay 0)      ;; delay
;(setq nlinum-relative-current-symbol "->")      ;; or "" for display current line number
;(setq nlinum-relative-offset 0)                 ;; 1 if you want 0, 2, 3...
(setq display-line-numbers-type 'visual)
(global-display-line-numbers-mode)

;; reveal.js configurations
(setq org-reveal-root "file:///D:/Program Files/reveal.js-3.8.0")

;; org mode configurations
(setq initial-major-mode 'org-mode) 
(setq org-hide-leading-stars t)
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")
        (sequence "DEV" "TI" "CQ" "|" "PRD")))
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
	("DONE" . org-done)
        ("DEV" . "green")
	("TI" . "green")
	("CQ" . "yellow")
	("PRD" . "red")))


;; clean up the interface
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(toggle-frame-maximized)
