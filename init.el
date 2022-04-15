

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(setq user-full-name "anaya")
;;(setq gc-cons-threshold 100000000)
(setq gc-cons-threshold 100000000)
(setq comp-deferred-compilation t)
;;(set-face-attribute 'default (selected-frame) :height 105)
;;;;;;;;;;
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	      '("melpa" . "https://melpa.org/packages/"))


(add-to-list 'load-path "~/.emacs.d/lisp")
;; (package-initialize)
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))


;; (set-frame-parameter (selected-frame) 'alpha '(100 50))   ;; press C-x C-e if you want to set your screen transparent by 80%

;;;;;;;;;; bean dean config
  

;; (defvar bootstrap-version)
;; (let ((bootstrap-file
;;        (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
;;       (bootstrap-version 5))
;;   (unless (file-exists-p bootstrap-file)
;;     (with-current-buffer
;;         (url-retrieve-synchronously
;;          "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
;;          'silent 'inhibit-cookies)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp)))
;;   (load bootstrap-file nil 'nomessage))


(when (fboundp 'native-compile-async)
  (setq comp-deferred-compilation t
;;        comp-deferred-compilation-black-list '("/mu4e.*\\.el$")
	))


;(native-compile-async "~/.emacs.d/lisp/" 6 t)

;(native-compile-async "~/.emacs.d/" nil t)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
































(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic)))))
 '(show-paren-match ((t (:background "green")))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auctex-latexmk async python-mode true qt-pro-mode ccls switch-window rjsx-mode company-qml qml-mode cmake-project eldoc-cmake all-the-icons modern-cpp-font-lock treemacs-all-the-icons yasnippet-snippets which-key vterm-toggle use-package undo-tree treemacs-projectile treemacs-magit treemacs-icons-dired symon smex rainbow-delimiters popup-kill-ring org-pdftools org-bullets nov lsp-ui ivy-xref ivy-rich ir-black-theme iedit ido-vertical-mode flycheck-clang-tidy doom-themes doom-modeline dmenu dired-subtree diminish diff-hl dashboard darkokai-theme darkmine-theme darkburn-theme dark-souls dark-mint-theme dark-krystal-theme dap-mode dakrone-theme d-mode cyberpunk-theme cyberpunk-2019-theme counsel-projectile constant-theme company-quickhelp company-box color-theme-sanityinc-tomorrow cmake-mode clang-format+ beacon badger-theme alect-themes afternoon-theme abyss-theme))
 '(warning-suppress-types '((comp))))
