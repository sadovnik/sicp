#lang racket/base

(provide pascal)

#| Returns value of an element of Pascal's triangle by row and column |#
(define (pascal row column)
  (if (or (= column 1)
          (= row column))
    1
    (+ (pascal (- row 1) (- column 1))
       (pascal (- row 1) column))))
