#lang racket/base

(require math/number-theory)

(define (runtime) (current-inexact-milliseconds))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (begin
      (report-prime (- (runtime)
                       start-time))
      #t)
    (begin
      (display " – not a prime number")
      #f)))

(define (report-prime elapsed-time)
  (display " – ")
  (display elapsed-time))

(define (search-for-primes start-from limit)
  (define (iterate current-number limit iteration)
    (if (> limit 0)
      (iterate
        (+ 1 current-number)
        (if (odd? current-number)
          (- limit (if (timed-prime-test current-number) 1 0))
          limit)
        (+ 1 iteration))
      (begin
        (newline)
        (display (string-append "Done! Iterations: " (number->string iteration)))
        (newline))))
  (iterate start-from limit 0))

(define primes-to-find 5)

(search-for-primes 1000 primes-to-find)
(newline)

(search-for-primes 10000 primes-to-find)
(display "---")
(newline)

(search-for-primes 10000 primes-to-find)
(display "---")
(newline)

(search-for-primes 100000 primes-to-find)
(display "---")
(newline)

(search-for-primes 1000000 primes-to-find)
(display "---")
(newline)
