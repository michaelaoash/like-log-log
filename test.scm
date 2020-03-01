;; http://www.cs.rpi.edu/courses/fall00/ai/scheme/reference/scheme-workshop/factoring.html

(define prime?
  (lambda (n)
    (if (even? n)
        (= n 2)
        (let loop ((trial-divisor 3))
          (or (< n (* trial-divisor trial-divisor)) 
              (and (not (zero? (remainder n trial-divisor)))
                   (loop (+ trial-divisor 2))))))))


(define factor
  (let ((extract-twos
          (lambda (n)
            (let loop ((two-list '())
                       (rest n))
              (if (even? rest)
                  (loop (cons 2 two-list) (quotient rest 2))
                  (cons rest two-list)))))

        (extract-odd-factors
          (lambda (partial-factorization)
            (let loop ((so-far (cdr partial-factorization))
                       (odd-product (car partial-factorization))
                       (trial-divisor 3))
              (cond ((< odd-product (* trial-divisor trial-divisor))
                     (reverse (cons odd-product so-far)))
                    ((zero? (remainder odd-product trial-divisor))
                     (loop (cons trial-divisor so-far)
                           (quotient odd-product trial-divisor)
                            trial-divisor))
                    (else
                     (loop so-far
                           odd-product
                           (+ trial-divisor 2))))))))

    (lambda (n)
      (let ((partial-factorization (extract-twos n)))
        (if (= (car partial-factorization) 1)
            (cdr partial-factorization)
            (extract-odd-factors partial-factorization))))))


(define extract-threes
          (lambda (n)
            (let loop ((three-list '())
                       (rest n))
              (if (zero? (remainder rest 3))
                  (loop (cons 3 three-list) (quotient rest 3))
                  (cons rest three-list)))))

