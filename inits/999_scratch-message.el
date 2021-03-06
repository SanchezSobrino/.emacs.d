(defun current-user ()
  (car (split-string (shell-command-to-string "whoami") "\n")))

(defconst *emacs* (concat
                   ";;              ______                             " "\n"
                   ";;             |  ____|                            " "\n"
                   ";;             | |__   _ __ ___   __ _  ___ ___    " "\n"
                   ";;             |  __| | '_ ` _ \\ / _` |/ __/ __|  " "\n"
                   ";;             | |____| | | | | | (_| | (__\\__ \\ " "\n"
                   ";;             |______|_| |_| |_|\\__,_|\\___|___/ " "\n"
                   ";;                                                 " "\n"
                   ";;"))

(defconst *sans* (concat
                  ";;                                                " "\n"
                  ";;                ██████████████████████          " "\n"
                  ";;              ████                  ████        " "\n"
                  ";;            ██                          ██      " "\n"
                  ";;            ██                          ██      " "\n"
                  ";;          ██                              ██    " "\n"
                  ";;          ██                    ██████    ██          * dude..." "\n"
                  ";;          ██                    ██████    ██          * you're going to have" "\n"
                  ";;          ██    ██████    ██    ██████    ██            a bad time." "\n"
                  ";;            ██          ██████          ██      " "\n"
                  ";;          ████  ██                  ██  ████    " "\n"
                  ";;          ██    ██████████████████████    ██    " "\n"
                  ";;          ██      ██  ██  ██  ██  ██      ██    " "\n"
                  ";;            ████    ██████████████    ████      " "\n"
                  ";;                ████              ████          " "\n"
                  ";;                    ██████████████              " "\n"
                  ";;"))

(defconst *flowey* (concat
                    ";;                                              " "\n"
                    ";;             ▄▄ ▀▀███▄▄▄  ▄▄████▀ ▄▄          " "\n"
                    ";;           ▄████▀                ████▄        " "\n"
                    ";;            ▀▀   ▄▄▄█████████▄▄▄   ▀▀         " "\n"
                    ";;      ▄████▄   ▄█████▀▀███▀▀█████▄   ▄████▄   " "\n"
                    ";;    ▄██▀▀▀▀▀  ███████  ███  ███████  ▀▀▀▀▀██▄       * Howdy!" "\n"
                    ";;    ███████▄  ███████  ███  ███████  ▄███████       * I'm FLOWEY." "\n"
                    ";;      ▀█████  ▀███▄▀▀▀▀▀▀▀▀▀▀▀▄███▀  █████▀         * FLOWEY the FLOWER!" "\n"
                    ";;        ▀▀▀▀▀  ▀████▄▀▀▀▀▀▀▀▄████▀  ▀▀▀▀▀     " "\n"
                    ";;           ▄▄█   ▀█████████████▀   █▄▄        " "\n"
                    ";;         ▄███▀▄▄    ▀▀▀▀▀▀▀▀▀    ▄▄▀███▄      " "\n"
                    ";;         ███ ██████▄▄▄▄▄ ▄▄▄▄▄██████ ███      " "\n"
                    ";;         ▀▀██████▀▀▀▀       ▀▀▀▀██████▀▀      " "\n"
                    ";;"))

(let ((load-time (format "Load time: %.2f seconds" (- (float-time after-init-time) (float-time before-init-time)))))
  (setq initial-scratch-message
        (concat *sans*
                "\n;; " (car (split-string (version) "\n"))
                "\n;; " load-time
                "\n;; " (format-time-string "%A %d %B %Y, %T")
                "\n;; "
                "\n;; Happy coding " (current-user) "!"
                "\n\n")))
