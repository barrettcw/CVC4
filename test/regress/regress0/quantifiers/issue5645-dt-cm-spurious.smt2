(set-logic ALL)
(set-info :status unsat)
(declare-datatypes ((Enum1 0)) (((None) (cons (data Bool)))))
(assert (forall ((var_1 Enum1)) (data var_1)))
(check-sat)
