#lang racket


(provide notfib-recursive
         notfib-iter)


(define (notfib-recursive n)
  (if (< n 4)
      n
      (+ (notfib-recursive (- n 1))
         (* 2 (notfib-recursive (- n 2)))
         (* 3 (notfib-recursive (- n 3))))))


(define (notfib-iter n)
  (define (notfib-step a b c count)
    (if (= count 0)
        c
        (notfib-step b c (+ c (* 2 b) (* 3 a)) (- count 1))))

  (if (< n 4)
      n
      (notfib-step 1 2 3 (- n 3))))
