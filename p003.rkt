#lang racket
(require racket/match)

(define (divisors-stream n)
  (define (div-stream-helper n p)
    (define curr (add1 p))
    (if (<= curr (quotient n 2))
        (if (= 0 (remainder n curr))
            (stream-cons curr (div-stream-helper n curr))
            (div-stream-helper n curr))  
        empty-stream))
  (stream-cons 1 (div-stream-helper n 1)))

(define (take s n)
  (if (and (not (stream-empty? s)) (> n 0))
      (cons (stream-first s) (take (stream-rest s) (sub1 n)))
      empty))

(define (primeFactors x)
  (match (take (divisors-stream x) 2)
    [(list 1 d) (cons d (primeFactors (quotient x d)))]
    [(list 1) (list x)]))

(apply max (primeFactors 600851475143))
