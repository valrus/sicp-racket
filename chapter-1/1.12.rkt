#lang racket

(provide pascal)

(define (pascal row column)
  (define (out-of-bounds row column)
    (or (< row 1)
        (< column 1)
        (> column row)))

  (cond [(out-of-bounds row column) 0]
        [(= column 1) 1]
        [(= column row) 1]
        [else (+ (pascal (- row 1) column) (pascal (- row 1) (- column 1)))]))
