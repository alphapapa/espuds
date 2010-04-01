;;; espuds-rest.el --- Definitions that don't fit in any other file


;; Loads CONTENTS with Emacs load command.
;;
;; Usage:
;;   When I load the following:
;;   """
;;   CONTENTS
;;   """
(When "^I load the following:$"
       (lambda (contents)
         (espuds-fake-eval contents)))

;; Creates a new temp file called FILE and opens it.
;;
;; Usage:
;;   When I open temp file "SOME FILE"
(When "^I open temp file \"\\(.+\\)\"$"
      (lambda (file)
        (find-file (make-temp-file file))))

;; Asserts that MESSAGE has been printed.
;;
;; Usage:
;;   Then I should see message "MESSAGE"
(Then "^I should see message \"\\(.+\\)\"$"
      (lambda (message)
        (assert
         (member message ecukes-messages) nil
         (concat "Expected \"" message "\" to be included in the list of printed messages."))))


(provide 'espuds-rest)

;;; espuds-rest.el ends here