(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (* y y)) (* guess 2)) 3))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) (/ x 1000.0)))

(define (cube x)
    (* x x x))

(define (cbrt x)
    (cbrt-iter 1.0 x))

(define x 9)

"(x/(y^2)+2y)/3"

(display "Cube root of ")
(display x)
(display ": ")
(display (sqrt x))
(display "\n")

(define x 0.0009)

(display "Cube root of ")
(display x)
(display ": ")
(display (sqrt x))
(display "\n")
