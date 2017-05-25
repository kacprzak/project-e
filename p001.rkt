#lang racket

(define (isMultiplesOfAny xs y)
  (ormap (lambda (x) (= (modulo y x) 0)) xs))

(apply + (filter (curry isMultiplesOfAny '(3 5)) (range 1 1000)))
