(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) (/ x 1000.0)))

(define (square x)
    (* x x))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define x 0.00000001)

(display "Square root of ")
(display x)
(display ": ")
(display (sqrt x))
(display "\n")

(define x 100000000)

(display "Square root of ")
(display x)
(display ": ")
(display (sqrt x))
(display "\n")
