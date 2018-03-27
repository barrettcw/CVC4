; COMMAND-LINE: --finite-model-find --mbqi=abs --no-check-models
; EXPECT: sat
(set-logic UF)
(set-info :status sat)
(declare-sort $$unsorted 0)
(declare-fun woman ($$unsorted $$unsorted) Bool)
(declare-fun female ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (woman U V) (female U V)) ))
(declare-fun human_person ($$unsorted $$unsorted) Bool)
(declare-fun animate ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (human_person U V) (animate U V)) ))
(declare-fun human ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (human_person U V) (human U V)) ))
(declare-fun organism ($$unsorted $$unsorted) Bool)
(declare-fun living ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (organism U V) (living U V)) ))
(declare-fun impartial ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (organism U V) (impartial U V)) ))
(declare-fun entity ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (organism U V) (entity U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (human_person U V) (organism U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (woman U V) (human_person U V)) ))
(declare-fun mia_forename ($$unsorted $$unsorted) Bool)
(declare-fun forename ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (mia_forename U V) (forename U V)) ))
(declare-fun abstraction ($$unsorted $$unsorted) Bool)
(declare-fun unisex ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (abstraction U V) (unisex U V)) ))
(declare-fun general ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (abstraction U V) (general U V)) ))
(declare-fun nonhuman ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (abstraction U V) (nonhuman U V)) ))
(declare-fun thing ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (abstraction U V) (thing U V)) ))
(declare-fun relation ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (relation U V) (abstraction U V)) ))
(declare-fun relname ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (relname U V) (relation U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (forename U V) (relname U V)) ))
(declare-fun object ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (object U V) (unisex U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (object U V) (impartial U V)) ))
(declare-fun nonliving ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (object U V) (nonliving U V)) ))
(declare-fun existent ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (entity U V) (existent U V)) ))
(declare-fun specific ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (entity U V) (specific U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (entity U V) (thing U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (object U V) (entity U V)) ))
(declare-fun substance_matter ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (substance_matter U V) (object U V)) ))
(declare-fun food ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (food U V) (substance_matter U V)) ))
(declare-fun beverage ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (beverage U V) (food U V)) ))
(declare-fun shake_beverage ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (shake_beverage U V) (beverage U V)) ))
(declare-fun order ($$unsorted $$unsorted) Bool)
(declare-fun event ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (order U V) (event U V)) ))
(declare-fun eventuality ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (eventuality U V) (unisex U V)) ))
(declare-fun nonexistent ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (eventuality U V) (nonexistent U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (eventuality U V) (specific U V)) ))
(declare-fun singleton ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (thing U V) (singleton U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (eventuality U V) (thing U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (event U V) (eventuality U V)) ))
(declare-fun act ($$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (act U V) (event U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (order U V) (act U V)) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (animate U V) (not (nonliving U V))) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (existent U V) (not (nonexistent U V))) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (nonhuman U V) (not (human U V))) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (nonliving U V) (not (living U V))) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (specific U V) (not (general U V))) ))
(assert (forall ((U $$unsorted) (V $$unsorted)) (=> (unisex U V) (not (female U V))) ))
(declare-fun of ($$unsorted $$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted) (W $$unsorted)) (=> (and (entity U V) (forename U W) (of U W V)) (not (exists ((X $$unsorted)) (and (forename U X) (not (= X W)) (of U X V)) ))) ))
(declare-fun nonreflexive ($$unsorted $$unsorted) Bool)
(declare-fun agent ($$unsorted $$unsorted $$unsorted) Bool)
(declare-fun patient ($$unsorted $$unsorted $$unsorted) Bool)
(assert (forall ((U $$unsorted) (V $$unsorted) (W $$unsorted) (X $$unsorted)) (=> (and (nonreflexive U V) (agent U V W) (patient U V X)) (not (= W X))) ))
(declare-fun actual_world ($$unsorted) Bool)
(declare-fun past ($$unsorted $$unsorted) Bool)
(assert (not (not (exists ((U $$unsorted)) (and (actual_world U) (exists ((V $$unsorted) (W $$unsorted) (X $$unsorted) (Y $$unsorted)) (and (of U W V) (woman U V) (mia_forename U W) (forename U W) (shake_beverage U X) (event U Y) (agent U Y V) (patient U Y X) (past U Y) (nonreflexive U Y) (order U Y)) )) ))))
(check-sat)
