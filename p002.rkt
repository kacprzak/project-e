#lang racket

(define fib-stream
  ((λ ()
    (define (fib-stream-h p c)
      (stream-cons (+ p c) (fib-stream-h c (+ p c))))
    (stream-cons 1 (stream-cons 1 (fib-stream-h 1 1))))))

(define (takeWhile s predicate)
  (define val (stream-first s))
  (if (predicate val)
      (cons val (takeWhile (stream-rest s) predicate))
      empty))

(apply + (filter even? (takeWhile fib-stream (curry >= 4000000))))
