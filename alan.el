;; Misc.
(add-to-list 'load-path (concat dotfiles-dir "/vendor"))
(setq default-tab-width 2)
(setq default-major-mode 'text-mode)
(setq x-select-enable-clipboard t)
(set-scroll-bar-mode 'right)
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode)
  (tool-bar-mode)
  (menu-bar-mode)
  (blink-cursor-mode))

;; Font
(set-face-font 'default "-bitstream-bitstream vera sans mono-medium-r-*-*-*-120-*-*-*-*-*-*")

;; Color Theme
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme-6.6.0"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

;; Tabbar Mode
(tabbar-mode)
(setq tabbar-buffer-groups-function (lambda() (list "All")))

;; White Space Mode
(require 'whitespace)

;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path (concat dotfiles-dir "/vendor/rinari"))
(require 'rinari)

;; Snippets
(add-to-list 'load-path (concat dotfiles-dir "/vendor/yasnippet-0.5.9"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/vendor/yasnippet-0.5.9/snippets"))

;; ECB
(custom-set-variables
 '(ecb-options-version "2.32")
 '(ecb-layout-name "alan-1")
 '(ecb-new-ecb-frame nil)
 '(ecb-tip-of-the-day nil))

(custom-set-faces)

;; Bindings
(global-set-key (kbd "C-c w") 'whitespace-mode)
(global-set-key (kbd "M-s") 'save-buffer)