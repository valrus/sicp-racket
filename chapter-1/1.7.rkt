#lang racket


(provide sicp-sqrt)


(define (good-enough? last-guess guess x)
  (if (= guess 0)
      (= x 0)
      (< (/ (abs (- guess last-guess)) guess) 0.01)))


(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess (/ x guess)))


(define (sqrt-iter last-guess guess x)
  (if (good-enough? last-guess guess x)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))


(define (sicp-sqrt x)
  (sqrt-iter 1.0 2.0 x))
