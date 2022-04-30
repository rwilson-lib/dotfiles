(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bibtex-file-path "~/Documents/bib")
 '(column-number-mode t)
 '(conda-anaconda-home "~/anaconda3/")
 '(custom-safe-themes
   '("28eb6d962d45df4b2cf8d861a4b5610e5dece44972e61d0604c44c4aad1e8a9d" "4eb69f17b4fa0cd74f4ff497bb6075d939e8d8bf4321ce8b81d13974000baac1" "0c6471dc1af916bfe2493300ddfec2d11c87e09d364e24b659a3c3de555c9e3d" "d94a55a07623ee474ddb4a0a5dca9a250ea4dcebe554249ce305560c3340ec57" "aba75724c5d4d0ec0de949694bce5ce6416c132bb031d4e7ac1c4f2dbdd3d580" "c64a5bed92a86a67e5a916688ffaa53b99a34422884cf6acac0fe151e39a7e3f" "87a176f4b715c755444f45361ff877081191f9e0e10e1ec4da655be901c7dbaf" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "021321ae56a45794f43b41de09fb2bfca184e196666b7d7ff59ea97ec2114559" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" "edf1f9e74600cac84368d8c1ae2158db85217c3a02e3b1470545462a64cea016" "6df412e59dbfe7f72f24319b9ee4513e40bb0e44384fc93a2c77399e641348f6" "dc11cee30927281fe3f5c77372119d639e77e86aa794dce2a6ff019afdfbec9e" default))
 '(display-battery-mode t)
 '(lsp-pyls-plugins-pylint-enabled t)
 '(lsp-pylsp-plugins-flake8-enabled nil)
 '(lsp-pylsp-plugins-pylint-enabled t)
 '(org-agenda-files
   '("/Users/rwilson/org/beorg/org/Tasks.org" "/Users/rwilson/org/beorg/org/Habits.org" "/Users/rwilson/org/beorg/org/Birthdays.org"))
 '(org-preview-latex-process-alist
   '((dvipng :programs
	     ("latex" "dvipng")
	     :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
	     (1.0 . 1.0)
	     :latex-compiler
	     ("latex -interaction nonstopmode -output-directory %o %f")
	     :image-converter
	     ("dvipng -D %D -T tight -bg Transparent -o %O %f"))
     (dvisvgm :programs
	      ("latex" "dvisvgm")
	      :description "dvi > svg" :message "you need to install the programs: latex and dvisvgm." :image-input-type "dvi" :image-output-type "svg" :image-size-adjust
	      (1.7 . 1.5)
	      :latex-compiler
	      ("latex -interaction nonstopmode -output-directory %o %f")
	      :image-converter
	      ("dvisvgm %f -n -b min -c %S -o %O"))
     (imagemagick :programs
		  ("latex" "convert")
		  :description "pdf > png" :message "you need to install the programs: latex and imagemagick." :image-input-type "pdf" :image-output-type "png" :image-size-adjust
		  (1.0 . 1.0)
		  :latex-compiler
		  ("pdflatex -interaction nonstopmode -output-directory %o %f")
		  :image-converter
		  ("convert -density %D -trim -antialias %f -quality 100 %O"))))
 '(package-selected-packages
   '(helpful ivy deft xwwp mu4e-views org-ref org-roam-bibtex citar julia-mode ess flycheck-languagetool use-package-ensure-system-package mu4e-alert solaire-mode auto-package-update treemacs-icons-dired dired-all-the-icons 4clojure auctex ob-ledger mw-thesaurus powerthesaurus gnuplot gnuplot-mode org-table-color company-restclient company-web company-box conda jupyter zmq ob-sql-mode undo-fu-session undo-fu consult-company kind-icon chess corfu-doc docstr docstr-mode ggtags google-this goto-last-change window cape corfu hl-block-mode hl-prog-extra all-the-icons-completion avy-embark-collect json-mode langtool plantuml-mode speed-type js-react-redux-yasnippets yaml-mode org-anki org-drill org-projectile todotxt-mode magit-todos hl-todo ob-restclient restclient org-noter-pdftools org-remark async-await vuiet lsp-ltex scanner evil-org flycheck-grammarly auto-yasnippet popup coterm key-quiz async the-matrix-theme company-lsp exotica-theme prettier-js rjsx-mode link-hint ipython-shell-send password-store-otp password-store org-tree-slide hide-mode-line format-all web-mode smartparens rainbow-mode live-py-mode python-environment fd-dired consult-fd term-mode leuven-theme mu4e-dashboard org-present django-html-mode tao-theme jazz-theme org-crypt epa-file ledger-mode ledger try org-roam-ui org-roam eink-theme evil-tree-edit tree-edit crdt projectile-ag ag projectile-ripgrep ripgrep flyspell-lazy evil-vimish-fold vimish-fold csv-mode aweshell evil-multiedit treemacs-evil treemacs-all-the-icons embark-consult consult-projectile flymake-python-pyflakes consult-yasnippet js-mode prog-mode consult-flycheck consult-lsp avy-flycheck sqlformat edbi-sqlite javascript-mode pretty-symbols-mode composite embark consult marginalia orderless vertico display-battery-mode pipenv pyvenv git-timemachine git-gutter emmet-mode treemacs-persp keycast treemacs-magit treemacs-projectile ob-napkin evil-surround evil-matchit exec-path-from-shell latex-preview-pane org-msg org-alert ox-reveal mu4e-marker-icons org-mu4e mu4e-org org-mime org-notmuch mu4e company-yasnippet yasnippet-snippets yasnippet sql-indent sql-upcase sql-mode winum visual-fill-column org-bullets dap-mode which-key vterm use-package typescript-mode rainbow-delimiters python-mode lsp-ui lsp-treemacs general forge evil-collection eterm-256color doom-themes doom-modeline))
 '(pdf-tools-handle-upgrades nil)
 '(send-mail-function 'mailclient-send-it)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tool-bar-mode nil)
 '(warning-suppress-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (use-package)
     (comp)
     (comp)
     (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inhert ace-jump-face-background :height 1.5)))))
