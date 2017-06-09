#lang racket

(define (divisors n)
  (define (div-append d divs)
    (cond
      [(= d 0) divs]
      [(= (remainder n d) 0) (div-append (sub1 d) (cons d divs))]
      [else (div-append (sub1 d) divs)]))
  (div-append (floor (/ n 2)) empty))

(define (sum-of-proper-divisors n)
  (apply + (divisors n)))

(define (amicable? n)
  (let ([d (sum-of-proper-divisors n)])
    (if (equal? n d) #f
        (equal? (sum-of-proper-divisors d) n))))

(apply + (filter amicable? (range 1 10000)))
