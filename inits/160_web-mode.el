(use-package web-mode
  :ensure t
  :mode (("\\.html$"  . web-mode)
         ("\\.xhtml$" . web-mode)
         ("\\.tmpl$"  . web-mode)
         ("\\.tpl$"   . web-mode)
         ("\\.less$"  . css-mode))
  :init
  (setq web-mode-markup-indent-offset 2))
