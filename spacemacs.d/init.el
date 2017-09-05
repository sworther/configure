

;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
      '(go
           ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------


     deft
     pandoc
     dash
     helm
     search-engine
     better-defaults
     imenu-list
     ;; semantic
     gnus
     pdf-tools
     html
     ;; ycmd
     ;; ivy
     ;; smex
     ;; vim-powerline
     ;; version-control
     ;; emoji

     (syntax-checking :variables
                      syntax-checking-enable-by-default nil
                      syntax-checking-enable-tooltips nil)
     spacemacs-editing
     (spacemacs-layouts :variables
                        layouts-enable-autosave nil
                        layouts-autosave-delay 300
                        )

     (chinese :variables
              chinese-enable-fcitx nil
              chinese-default-input-method 'wubi
              chinese-enable-youdao-dict t
              )


     (git :variables
          git-magit-status-fullscreen t
          magit-push-always-verify nil
          magit-save-repository-buffers 'dontask
          magit-revert-buffers 'silent
          magit-refs-show-commit-count 'all
          magit-revision-show-gravatars nil
          )
     github

     (auto-completion :variables
                      ;;auto-completion-complete-with-key-sequence jk
                      auto-completion-complete-with-key-sequence-delay 0.04
                      ;; auto-completion-private-snippets-directory  "~/.spacemacs.d/snippets"
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t
                      ;;spacemacs-default-company-backends '(company-files company-capf)
                      auto-completion-enable-help-tooltip t
                      :disabled-for  markdown
                      ;; :disabled-for  org

                      )
     (gtags :disabled-for clojure emacs-lisp javascript latex python shell-scripts)
     (shell :variables
            shell-default-shell 'eshell
            )

     (markdown :variables
               markdown-open-command  "remarkble"
               markdown-live-preview-engine 'vmd
               )


     (latex :variables
            latex-enable-auto-fill t
            latex-enable-folding t
      )

     bibtex

     ;; language layer configure
     (python :variables
             python-test-runner '(nose pytest)
         )
     (ipython-notebook)


     (ruby :variables
           ruby-version-manager 'chruby
           )
     (clojure :variables
              clojure-enable-fancify-symbols t
              )
     ruby-on-rails
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t
            )

     (haskell :variables
              haskell-completion-backend 'ghci
              ;; haskell-completion-backend 'ghc-mod
              haskell-enable-hindent-style "johan-tibell"
              )
     lua

     emacs-lisp
     (javascript :variables
                 javascript-disable-tern-port-files nil


                 )

     scheme
     ;; java

     (scala :variables
            scala-indent:use-javadoc-style t
            scala-enable-eldoc t
            scala-auto-insert-asterisk-in-comments t
            scala-use-unicode-arrows t
            scala-auto-start-ensime t


            )


     vimscript
     org
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                         ;; cask
                                         fzf
                                         ;; elpy


                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 3
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
      dotspacemacs-themes '(
                               spacemacs-dark
                               monokai
                               tsdh-dark
                               leuven
                               spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 20
                               ;; :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

(setq configuration-layer--elpa-archives
          '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
            ("org-cn"   . "http://elpa.zilongshanren.com/org/")
            ("gnu-cn"   . "http://elpa.zilongshanren.com/gnu/")))

;;(setq configuration-layer--elpa-archives
;;    '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;      ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;;      ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))


;; ensime configure
(push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
(push '("ensime" . "melpa-stable") package-pinned-packages)


;; (setq ycmd-server-command '("python3" "/opt/ycmd/ycmd"))
;; (setq-default global-ycmd-mode t)
;; ;; (setq ycmd-server-command '("python2" "/usr/share/vim/vimfiles/third_party/ycmd/ycmd/"))

  )


(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."



  ;; global-set-key 
  (spacemacs/set-leader-keys "'" 'spacemacs/shell-pop-multiterm)


  ;;default browser
  ;; (setq browse-url-browser-function 'eww-browse-url) ; emacs browser
  ;; (setq browse-url-browser-function 'w3m-browse-url) 
  (setq browse-url-browser-function 'browse-url-chromium) ; google's browser

  ;; (linum-relative-on)
  ;; (linum-on)

  ;;geiser scheme implementation
  (setq-default geiser-scheme-implementation 'mit)

  ;;deault shell configure
  (setq-default shell-default-shell  'shell)
  (setq-default shell-default-position 'bottom)
  ;; (setq-default shell-default-height '30)

  (setq-default evil-escape-key-sequence "jj")
  (global-git-commit-mode t)

    ;; global hungry mode complict with sp-delete-pair
   (global-hungry-delete-mode t)
    (defadvice hungry-delete-backward (before sp-delete-pair-advice activate) (save-match-data (sp-delete-pair (ad-get-arg 0))))


  ;; latex configuration
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (add-hook 'LaTeX-mode-hook (lambda()
                               (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                               (setq TeX-command-default "XeLaTeX")
                               (setq TeX-save-query  nil )
                               ;; (setq TeX-show-compilation t)
                               ))

  ;; (spacemacs//set-monospaced-font   "Source Code Pro" "FZKai\-Z03" 19 22)
  ;; (spacemacs//set-monospaced-font   "Source Code Pro" "WenQuanYi Zen Hei Sharp" 20  24)
  ;;(spacemacs//set-monospaced-font   "Source Code Pro" "WenQuanYi Zen Hei Sharp" 18  20)

  ;;search engine  configure
  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "chromium")

  ;;c-c++-mode only:
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))


  ;; bibtex configure
  (setq org-ref-open-pdf-function
        (lambda (fpath)
          (start-process "zathura" "*helm-bibtex-zathura*" "/usr/bin/zathura" fpath)))

  ;; ;;java configure
  ;; (setq eclim-eclipse-dirs "/opt/eclipse"
  ;;       eclim-executable "/usr/lib/eclipse/plugins/org.eclim_2.6.0/bin/eclim"
  ;;       ;;eclimd-executable "/usr/lib/eclipse/plugins/org.eclim_2.6.0/bin/eclimd"
  ;;       eclimd-default-workspace "~/workspace"
  ;;       )


  ;; ;; /opt  ycmd  confonfigure
  ;; (setq ycmd-force-semantic-completion t)
  ;; (global-ycmd-mode t)
  ;; (add-hook 'after-init-hook 'global-ycmd-mode)


  ;;org configure
  (with-eval-after-load 'org
    (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
      )


    ;;python elpy shortcut
    ;; (elpy-enable)
    ;; (spacemacs/set-leader-keys-for-major-mode 'python-mode
    ;;     "," 'elpy-shell-send-current-statement)


)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(compilation-message-face (quote default))
 '(evil-vsplit-window-right t)
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path-from-shell-check-startup-files nil)
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "~/.cabal/bin")))
 '(fci-rule-color "#3C3D37" t)
 '(haskell-indent-after-keywords
   (quote
    (("where" 4 0)
     ("of" 4)
     ("do" 4)
     ("mdo" 4)
     ("rec" 2)
     ("in" 4 0)
     ("{" 4)
     "if" "then" "else" "let")))
 '(haskell-indent-spaces 4)
 '(haskell-indentation-layout-offset 4)
 '(haskell-indentation-left-offset 4)
 '(haskell-indentation-starter-offset 4)
 '(haskell-indentation-where-post-offset 4)
 '(haskell-indentation-where-pre-offset 4)
 '(helm-split-window-default-side (quote below))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(latex-run-command "xelatex")
 '(magit-diff-use-overlays nil)
 '(org-agenda-files
   (quote
    ("~/agenda/week.org" "~/agenda/todo.org" "~/agenda/month.org" "~/agenda/day.org")))
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file "~/agenda/todo.org")
      "")
     ("i" "idea" entry
      (file "~/life/org/idea.org")
      "")
     ("w" "wubi" entry
      (file "~/life/org/wubi.org")
      "")
     ("b" "beamer" entry
      (file "~/life/FAQ/beamer.org")
      "")
     ("j" "java" entry
      (file "~/life/FAQ/java.org")
      "")
     ("a" "algorithms" entry
      (file "~/life/org/algorithms.org")
      "")
     ("o" "org" entry
      (file "~/life/FAQ/org.org")
      "")
     ("m" "emacs" entry
      (file "~/life/FAQ/emacs.org")
      "")
     ("A" "Arch" entry
      (file "~/life/FAQ/arch.org")
      "")
     ("s" "shell" entry
      (file "~/life/FAQ/shell.org")
      "")
     ("l" "language" entry
      (file "~/life/FAQ/language.org")
      "")
     ("f" "OpenFOAM" entry
      (file "~/life/FAQ/OpenFOAM.org")
      "")
     ("x" "tmux" entry
      (file "~/life/FAQ/tmux.org")
      "")
     ("T" "Tool" entry
      (file "~/life/FAQ/Tool.org")
      "")
     ("h" "haskell" entry
      (file "~/life/FAQ/haskell.org")
      ""))))
 '(org-refile-targets (quote ((nil :maxlevel . 3))))
 '(package-selected-packages
   (quote
    (symon meghanada magithub helm-purpose window-purpose groovy-mode groovy-imports gradle-mode git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl browse-at-remote noflet ensime sbt-mode scala-mode minitest hide-comnt winum unfill fuzzy zeal-at-point pandoc-mode ox-pandoc helm-dash deft ahk-mode imenu-list magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito ht engine-mode flycheck-ycmd company-ycmd ycmd request-deferred deferred stickyfunc-enhance srefactor wgrep smex ivy-hydra counsel-projectile counsel swiper org-ref key-chord ivy helm-bibtex parsebib biblio biblio-core web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data vmd-mode vimrc-mode dactyl-mode solaris-light-theme git commander cask shut-up web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc company-tern tern coffee-mode yapfify pyvenv pytest pyenv-mode py-isort projectile-rails pip-requirements lua-mode live-py-mode hy-mode helm-pydoc feature-mode cython-mode company-anaconda anaconda-mode pythonic youdao-dictionary names chinese-word-at-point pdf-tools tablist typit mmt pacmacs dash-functional 2048-game helm-gtags ggtags gmail-message-mode ham-mode html-to-markdown edit-server disaster company-c-headers cmake-mode clang-format pcache company-auctex auctex-latexmk auctex monokai-theme geiser rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-haskell company-ghci company-ghc ghc company-emacs-eclim eclim company-cabal cmm-mode clojure-snippets clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue chruby bundler inf-ruby haskell-mode clojure-mode xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help flycheck-pos-tip flycheck chinese-wbim pangu-spacing find-by-pinyin-dired chinese-pyim chinese-pyim-basedict pos-tip ace-pinyin pinyinlib ace-jump-mode smeargle orgit org-projectile org-present org org-pomodoro alert log4e gntp org-download mmm-mode markdown-toc markdown-mode magit-gitflow htmlize helm-gitignore gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md evil-magit magit magit-popup git-commit with-editor evil-unimpaired smartparens iedit anzu evil goto-chg undo-tree highlight f s company bind-map yasnippet packed dash helm avy helm-core async auto-complete popup package-build ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree mwim move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio flyspell-correct-helm flyspell-correct flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode spacemacs-theme quelpa evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word company-statistics column-enforce-mode clean-aindent-mode bind-key auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(split-height-threshold nil)
 '(split-width-threshold 0)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(ycmd-startup-timeout 30))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C")))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
    '(ansi-color-faces-vector
         [default default default italic underline success warning error])
    '(ansi-color-names-vector
         ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(compilation-message-face (quote default))
 '(evil-vsplit-window-right t)
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path-from-shell-check-startup-files nil)
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "~/.cabal/bin")))
 '(fci-rule-color "#3C3D37" t)
    '(haskell-indent-after-keywords
         (quote
             (("where" 4 0)
                 ("of" 4)
                 ("do" 4)
                 ("mdo" 4)
                 ("rec" 2)
                 ("in" 4 0)
                 ("{" 4)
                 "if" "then" "else" "let")))
 '(haskell-indent-spaces 4)
 '(haskell-indentation-layout-offset 4)
 '(haskell-indentation-left-offset 4)
 '(haskell-indentation-starter-offset 4)
 '(haskell-indentation-where-post-offset 4)
 '(haskell-indentation-where-pre-offset 4)
 '(helm-split-window-default-side (quote below))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
    '(highlight-tail-colors
         (quote
             (("#3C3D37" . 0)
                 ("#679A01" . 20)
                 ("#4BBEAE" . 30)
                 ("#1DB4D0" . 50)
                 ("#9A8F21" . 60)
                 ("#A75B00" . 70)
                 ("#F309DF" . 85)
                 ("#3C3D37" . 100))))
 '(latex-run-command "xelatex")
 '(linum-relative-format "%3s ")
 '(linum-relative-plusp-offset 0)
 '(lisp-body-indent 4)
 '(lisp-indent-offset 4)
 '(magit-diff-use-overlays nil)
    '(org-agenda-files
         (quote
             ("~/agenda/week.org" "~/agenda/todo.org" "~/agenda/month.org" "~/agenda/day.org")))
    '(org-capture-templates
         (quote
             (("t" "todo" entry
                  (file "~/agenda/todo.org")
                  "")
                 ("i" "idea" entry
                     (file "~/life/org/idea.org")
                     "")
                 ("w" "wubi" entry
                     (file "~/life/org/wubi.org")
                     "")
                 ("b" "beamer" entry
                     (file "~/life/FAQ/beamer.org")
                     "")
                 ("j" "java" entry
                     (file "~/life/FAQ/java.org")
                     "")
                 ("a" "algorithms" entry
                     (file "~/life/org/algorithms.org")
                     "")
                 ("o" "org" entry
                     (file "~/life/FAQ/org.org")
                     "")
                 ("m" "emacs" entry
                     (file "~/life/FAQ/emacs.org")
                     "")
                 ("A" "Arch" entry
                     (file "~/life/FAQ/arch.org")
                     "")
                 ("s" "shell" entry
                     (file "~/life/FAQ/shell.org")
                     "")
                 ("l" "language" entry
                     (file "~/life/FAQ/language.org")
                     "")
                 ("f" "OpenFOAM" entry
                     (file "~/life/FAQ/OpenFOAM.org")
                     "")
                 ("x" "tmux" entry
                     (file "~/life/FAQ/tmux.org")
                     "")
                 ("T" "Tool" entry
                     (file "~/life/FAQ/Tool.org")
                     "")
                 ("h" "haskell" entry
                     (file "~/life/FAQ/haskell.org")
                     ""))))
 '(org-refile-targets (quote ((nil :maxlevel . 3))))
    '(package-selected-packages
         (quote
             (ein websocket symon meghanada magithub helm-purpose window-purpose groovy-mode groovy-imports gradle-mode git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl browse-at-remote noflet ensime sbt-mode scala-mode minitest hide-comnt winum unfill fuzzy zeal-at-point pandoc-mode ox-pandoc helm-dash deft ahk-mode imenu-list magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito ht engine-mode flycheck-ycmd company-ycmd ycmd request-deferred deferred stickyfunc-enhance srefactor wgrep smex ivy-hydra counsel-projectile counsel swiper org-ref key-chord ivy helm-bibtex parsebib biblio biblio-core web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data vmd-mode vimrc-mode dactyl-mode solaris-light-theme git commander cask shut-up web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc company-tern tern coffee-mode yapfify pyvenv pytest pyenv-mode py-isort projectile-rails pip-requirements lua-mode live-py-mode hy-mode helm-pydoc feature-mode cython-mode company-anaconda anaconda-mode pythonic youdao-dictionary names chinese-word-at-point pdf-tools tablist typit mmt pacmacs dash-functional 2048-game helm-gtags ggtags gmail-message-mode ham-mode html-to-markdown edit-server disaster company-c-headers cmake-mode clang-format pcache company-auctex auctex-latexmk auctex monokai-theme geiser rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-haskell company-ghci company-ghc ghc company-emacs-eclim eclim company-cabal cmm-mode clojure-snippets clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue chruby bundler inf-ruby haskell-mode clojure-mode xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help flycheck-pos-tip flycheck chinese-wbim pangu-spacing find-by-pinyin-dired chinese-pyim chinese-pyim-basedict pos-tip ace-pinyin pinyinlib ace-jump-mode smeargle orgit org-projectile org-present org org-pomodoro alert log4e gntp org-download mmm-mode markdown-toc markdown-mode magit-gitflow htmlize helm-gitignore gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md evil-magit magit magit-popup git-commit with-editor evil-unimpaired smartparens iedit anzu evil goto-chg undo-tree highlight f s company bind-map yasnippet packed dash helm avy helm-core async auto-complete popup package-build ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree mwim move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio flyspell-correct-helm flyspell-correct flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode spacemacs-theme quelpa evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word company-statistics column-enforce-mode clean-aindent-mode bind-key auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(smartparens-enabled-hook nil)
 '(smartparens-global-mode t)
 '(sp-autodelete-closing-pair t)
 '(sp-autodelete-opening-pair t)
 '(split-height-threshold nil)
 '(split-width-threshold 0)
 '(vc-annotate-background nil)
    '(vc-annotate-color-map
         (quote
             ((20 . "#F92672")
                 (40 . "#CF4F1F")
                 (60 . "#C26C0F")
                 (80 . "#E6DB74")
                 (100 . "#AB8C00")
                 (120 . "#A18F00")
                 (140 . "#989200")
                 (160 . "#8E9500")
                 (180 . "#A6E22E")
                 (200 . "#729A1E")
                 (220 . "#609C3C")
                 (240 . "#4E9D5B")
                 (260 . "#3C9F79")
                 (280 . "#A1EFE4")
                 (300 . "#299BA6")
                 (320 . "#2896B5")
                 (340 . "#2790C3")
                 (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
    '(weechat-color-list
         (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(ycmd-startup-timeout 30))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822")) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C")))))
)
