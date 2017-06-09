#lang racket

(define (remove-comma item)
  (if (list? item)
      (car (cdr item))
      item))

(define (alphabetical-ord c)
  (add1 (- (char->integer c) (char->integer #\A))))

(define (alphabetical-score str)
  (apply + (map alphabetical-ord (string->list str))))

(define names (sort (map remove-comma (file->list "p022_names.txt")) string<?))

(define (total-score name position)
  (* (alphabetical-score name) position))

(apply + (map total-score names (range 1 (add1 (length names)))))
