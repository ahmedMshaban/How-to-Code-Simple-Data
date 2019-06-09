;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
empty


(define l3 (cons 1 (cons 2 (cons 3 empty))))

(first l3)
(first (rest l3))
(rest (rest l3))

(empty? empty)