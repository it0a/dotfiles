(setq inhibit-splash-screen t)

(add-to-list 'load-path "~/.emacs.d/plugins/undo-tree")
(require 'undo-tree)
(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(require 'org)

(setq org-todo-keyword-faces
   '(("TODO" . org-warning) ("IN-PROGRESS" . "yellow")
     ("SUSPENDED" . "grey") ("CANCELED" . (:foreground "red" :weight bold))))


(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "|" "DONE")
    (sequence "SUSPENDED" "|" "CANCELED")))

(setq org-log-done 'time)
(setq org-log-done 'note)

(add-to-list 'load-path "~/.emacs.d/plugins/elscreen")
(require 'elscreen)
(elscreen-start)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-leader")
(require 'evil-leader)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-org-mode")
(require 'evil-org)
(add-to-list 'load-path "~/.emacs.d/plugins/evil-tabs")
(require 'evil-tabs)
(global-evil-tabs-mode t)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-mode 1)
(add-to-list 'load-path "~/.emacs.d/plugins/key-chord")
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

(add-to-list 'load-path "~/.emacs.d/plugins/org-jira")
(setq jiralib-url "https://streamlinx.atlassian.net/") 
;; you need make sure whether the "/jira" at the end is 
;; necessary or not, see discussion at the end of this page

(require 'org-jira) 
;; jiralib is not explicitly required, since org-jira will load it.

;;; esc quits

(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/SMRT/SMRT-open.org" "~/org/smartsToo.org" "~/org/todo.org" "~/org/reference.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
