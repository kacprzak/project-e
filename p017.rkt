#lang racket
(require racket/match)

(define (toEnglish n)
  (match n
    [0 "zero"]
    [1 "one"]
    [2 "two"]
    [3 "three"]
    [4 "four"]
    [5 "five"]
    [6 "six"]
    [7 "seven"]
    [8 "eight"]
    [9 "nine"]
    [10 "ten"]
    [11 "eleven"]
    [12 "twelve"]
    [13 "thirteen"]
    [14 "fourteen"]
    [15 "fifteen"]
    [16 "sixteen"]
    [17 "seventeen"]
    [18 "eighteen"]
    [19 "nineteen"]
    [20 "twenty"]
    [30 "thirty"]
    [40 "forty"]
    [50 "fifty"]
    [60 "sixty"]
    [70 "seventy"]
    [80 "eighty"]
    [90 "ninety"]
    [1000 "one thousand"]
    [x (if (< x 100)
           (string-append (toEnglish (* 10 (quotient x 10))) "-" (toEnglish (remainder x 10)))
           (if (< x 1000)
               (let ([q (quotient x 100)]
                     [r (remainder x 100)])
                 (string-append (toEnglish q) " hundred" (if (= r 0)
                                                             ""
                                                             (string-append " and " (toEnglish r)))))
               (error "Unsupported number!")))]))

(define (letters-count str)
  (string-length (string-replace (string-replace str "-" "") " " "")))

(apply + (map letters-count (map toEnglish (range 1 1001))))
