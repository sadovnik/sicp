#lang racket/base

(require racket/math)

(provide cube-root)

(define precision 0.0001)

(define (sqrt-iter current-guess old-guess x)
        (if (good-enough? current-guess old-guess)
            current-guess
            (sqrt-iter (improve current-guess x) current-guess x)))

(define (improve guess x)
        (average guess (/ x (sqr guess))))

(define (average x y)
        (/ (+ x (* y 2)) 3))

(define (good-enough? old-guess new-guess)
        (< (abs (- old-guess new-guess)) precision))

(define (cube-root x)
        (sqrt-iter 1.0 0.0 x))
