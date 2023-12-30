(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Refresh package contents if it's the first run
(when (not package-archive-contents)
  (package-refresh-contents))

;; Check for the Material theme and install if not present
(unless (package-installed-p 'material-theme)
  (package-install 'material-theme))

;; Load and activate the Material theme
(load-theme 'material t)
