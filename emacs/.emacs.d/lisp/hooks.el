(defun clang-format-buffer-smart ()
  "Reformat buffer if .clang-format exists in the projectile root."
  (when (f-exists? (expand-file-name ".clang-format" (projectile-project-root)))
    (clang-format-buffer)))

"Add auto-save hook for clang-format-buffer-smart."
(add-hook 'c-mode-hook
  (lambda ()
    (add-hook 'before-save-hook
              'clang-format-buffer-smart nil 'local)))

 (provide 'hooks)
