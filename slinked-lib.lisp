(defstruct node
  data next)

(defstruct my-list
  (head nil :type (or node null))
  (tail nil :type (or node null))
  (size 0 :type (integer 0)))

;; Constructors

(defun cr-listn (n)
  "Creates a singly-linked list of size n initializing the DATA slot to 0."
  (if (zerop n) (make-my-list)
      (my-cons 0 (cr-listn (1- n)))))

(defun my-cons (data list)
  "Analogous to CONS but operates on a singly-linked list."
  (when (null list) (:= list (make-my-list)))
  (let ((new-head (make-node :data data
                             :next (my-list-head list))))
    (make-my-list :head new-head
                  :tail (my-list-head list)
                  :size (1+ (my-list-size list)))))

;; Accessors

(defun my-car (list)
  "Analogous to CAR but operates on a singly-linked list."
  (let ((item (my-list-head list)))
    (when item (node-data item))))

(defun my-cdr (list)
  "Analogous to CDR but operates on a singly-linked list."
  (let ((tail (my-list-tail list)))
    (if tail
        (make-my-list :head tail
                      :tail (node-next tail)
                      :size (1- (my-list-size list)))
        (make-my-list)))) ;returns an empty cons cell list

(defun my-elt (list index)
  "Analogous to ELT but operates on a singly-linked list."
  (when (and (>= index 0) (< index (my-list-size list)))
    (labels ((elt-aux (list i)
               (if (zerop i) (my-car list)
                   (elt-aux (my-cdr list) (1- i)))))
      (elt-aux list index))))

;; Modifier

(defun my-setf (list index value)
  "Analogous to SETF but operates on a singly-linked list."
  (when (and (>= index 0) (< index (my-list-size list)))
    (labels ((setf-aux (list i)
               (if (zerop i) (setf (node-data (my-list-head list)) value)
                   (setf-aux (my-cdr list) (1- i)))))
      (setf-aux list index))))