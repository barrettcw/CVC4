(set-logic ALL)
(set-info :status sat)
(set-option :produce-models true)
(declare-fun A () (Bag String))
(declare-fun B () (Bag String))
(assert (= B (duplicate_removal A)))
(assert (distinct (as emptybag (Bag String)) A B))
(check-sat)
