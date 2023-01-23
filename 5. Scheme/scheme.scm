; Calculates the area of a circle using radius
(define (radius -> area radius)
    (*(*radius radius) pi))
(radius -> area 5)

; Deletes the last element of a list, need to recurse to last pair of values for cdr 
    ;while recombining the list 
(define (removelast ls)
    (if (or (null? ls)(null? (cdr ls)))
        '()
        (cons (car ls)(removelast (cdr ls)))))

; Reverse a list
(define (reverse ls)
    (if (or (null? ls)(null? (cdr ls)))
        '()
        (cons (reverse (cdr ls))(car ls))))

; Insert an element to the right of another element
(define (insertright inword search ls)
    (if (eq? (search (car ls))
        (cons (cons (car ls) word)(cdr ls))
        (cons (car ls)(insertright (cdr ls)))))

; Merge section of a mergesort function in Scheme
(define (merge_lists oddList evenList)
    ; Check for empty list
    (cond ((null? oddList) evenList) ((null? evenList) oddList)
    (else 
        ; Create vars for heads of both lists
        (let ((head1 (car oddList)) (head2 (car evenList)))
        ; Add the smaller element to front of merged list
        (if (<= head1 head2)
            ; Recursively concat lists
            (cons head1 (merge_lists (cdr oddList) evenList))
            (cons head2 (merge_lists oddList (cdr evenList))))))))

(define (find atom ls)
    (if (eq? atom (car ls))
        (display "#t")
        (if (null? ls)
            (display "#f")
            (find atom (cdr ls)))))

