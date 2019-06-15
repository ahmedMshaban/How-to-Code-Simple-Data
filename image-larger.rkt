;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image-larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; Produces true if the first Image (WIDTH and HEIGHT) is larger than the second Image (WIDTH and HEIGHT), else false

(check-expect (first-img-larger? (rectangle 10 15 "solid" "blue") (rectangle 30 20 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 10 15 "solid" "blue") (rectangle 30 15 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 10 20 "solid" "blue") (rectangle 30 15 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 30 15 "solid" "blue") (rectangle 30 20 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 30 15 "solid" "blue") (rectangle 30 15 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 30 20 "solid" "blue") (rectangle 30 15 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 30 15 "solid" "blue") (rectangle 20 20 "solid" "red")) false)  
(check-expect (first-img-larger? (rectangle 30 15 "solid" "blue") (rectangle 20 15 "solid" "red")) false) 
(check-expect (first-img-larger? (rectangle 30 20 "solid" "blue") (rectangle 20 15 "solid" "red"))  true)

;(define (first-img-larger? image1 image2) false)     ;stub

;(define (first-img-larger? image1 image2)        ;tempalte
;  (... image1 image2)) 


(define (first-img-larger? image1 image2)         
  (and
   (> (image-width image1) (image-width image2))
   (> (image-height image1) (image-height image2))))