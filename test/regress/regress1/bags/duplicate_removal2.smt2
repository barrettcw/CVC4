(set-logic ALL)
(set-info :status unsat)
(declare-fun A () (Bag String))
(declare-fun B () (Bag String))
(assert (= B (duplicate_removal A)))
(assert (distinct (as emptybag (Bag String)) A B))
(assert (= B (union_max A B)))
(check-sat)