#lang racket/base

#| Exercise 1.2: Translate the following expression into prefix |#
#| form: |#
#| 5 + 4 + (2 − (3 − (6 + 4/5))) |#
#| ───────────────────────────── |#
#|      3(6 − 2)(2 − 7) |#
(provide expr)

(define expr
        (/  (+  (-  2 (-  3 (+  (/ 4 5) 6)))
            4
            5)
        (* (- 6 2)
           (- 2 7)
           3)
        ))
