(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(conda-anaconda-home (expand-file-name "~/opt/anaconda3/"))
 '(package-selected-packages
   '(modus-themes webkit link-hint avy-link ace-link eglot fd-dired all-the-icons-completion emacs-everywhere activity-watch-mode hammy chess speed-type key-quiz vuiet consult-org-roam org-roam-ui org-transclusion gnuplot-mode gnuplot org-anki org-remark org-mac-link evil-org org-alert org-present ox-reveal org-bullets ob-restclient ob-sql-mode ob-napkin visual-fill-column org-msg org-mime mu4e-alert winum org-noter-pdftools pdf-tools org-ref org-roam-bibtex citar citeproc latex-preview-pane auctex powerthesaurus mw-thesaurus flycheck-languagetool blamer git-timemachine git-gutter forge julia-mode ess-view-data ess jupyter yaml-mode sqlformat plantuml-mode consult-projectile pipenv conda live-py-mode python-mode jsonian json-mode prettier-js rjsx-mode typescript-mode web-mode flymake-python-pyflakes emmet-mode auto-yasnippet js-react-redux-yasnippets yasnippet-snippets rainbow-delimiters rainbow-mode hl-todo smartparens docstr evil-textobj-tree-sitter tree-sitter-langs tree-sitter format-all websearch flyspell-lazy evil-vimish-fold vimish-fold crdt coterm vterm eterm-256color hl-prog-extra cape kind-icon corfu-doc corfu company-restclient company-web company-box keycast treemacs-all-the-icons treemacs-evil treemacs-magit treemacs-projectile treemacs-icons-dired treemacs embark-consult avy-embark-collect embark consult-company consult-yasnippet consult-flycheck consult marginalia orderless vertico avy-flycheck avy jazz-theme doom-modeline hide-mode-line all-the-icons which-key general hydra iedit evil-surround evil-matchit evil-collection goto-last-change evil alert async-await try undo-fu-session undo-fu use-package-ensure-system-package auto-package-update use-package))
 '(pdf-tools-handle-upgrades nil)
 '(safe-local-variable-values
   '((eval add-hook 'after-save-hook #'org-babel-tangle)
     (eval add-hook 'after-save-hook #'org-babel-execute-buffer tt)))
 '(uniquify-buffer-name-style 'post-forward nil (uniquify))
 '(warning-suppress-log-types '((emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inhert ace-jump-face-background :height 1.5))))
 '(blamer-face ((t :foreground "#7a88cf" :background unspecified :height 140 :italic t)))
 '(tree-sitter-hl-face:comment ((t (:inherit font-lock-comment-face :slant normal)))))
