;; Written 16:39:10 8/12/2019

(in-package :sparser)


(define-mixin-category absorb-39.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-GOAL WITH-THEME WITH-SOURCE)
  :realization ((:S GOAL :O THEME) (:S GOAL :O THEME :FROM SOURCE)))

(define-mixin-category accept-77.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-S_ING NP-V-THAT-S NP-V-WHAT-S WITH-AGENT
           WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category accompany-51.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::THEME PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SPATIAL DESTINATION)))

(define-mixin-category acquiesce-95.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.THEME WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :TO AGENT) (:S AGENT :TO THEME)))

(define-mixin-category acquiesce-95.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ACQUIESCE-95.1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category act-114
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O PREDICATE)))

(define-mixin-category act-114-1
  :specializes subcategorization-pattern
  :mixins (NP-V ACT-114)
  :realization ((:S AGENT)))

(define-mixin-category act-114-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.PREDICATE ACT-114-1)
  :realization ((:S AGENT :ON PREDICATE) (:S AGENT :O PREDICATE)))

(define-mixin-category addict-96
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.STIMULUS NP-V-NP-S_ING WITH-AGENT WITH-PATIENT
           WITH-STIMULUS)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT :TO STIMULUS)))

(define-mixin-category adjust-26.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-NP-S_ING NP-V-S_ING NP-V-PP WITH-AGENT
           WITH-PATIENT WITH-GOAL WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :TO GOAL)
                (:S AGENT :TO GOAL)))

(define-mixin-category admire-31.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.STIMULUS NP-V-THAT-S NP-V-S_ING
           NP-V-NP-S_ING WITH-STIMULUS WITH-EXPERIENCER WITH-ATTRIBUTE)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER :O STIMULUS :FOR ATTRIBUTE)
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category admire-31.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ADMIRE-31.2)
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category admit-64.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :IO THEME :OC LOCATION)))

(define-mixin-category admit-64.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADV NP-V-NP-PP.LOCATION ADMIT-64.3)
  :realization ((:S AGENT :IO THEME :OC LOCATION)
                (:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category adopt-93
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category advise-37.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-THAT-S NP-V-NP-HOW-S_INF
           NP-V-NP-S-QUOTE NP-V-NP-PP.TOPIC WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT)
                (:S AGENT :O RECIPIENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING
                 TOPIC :ON TOPIC :REGARDING TOPIC :RESPECTING TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :O RECIPIENT :OF TOPIC)))

(define-mixin-category advise-37.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-THAT-S NP-V-HOW-S_INF NP-V-S-QUOTE ADVISE-37.9)
  :realization ((:S AGENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING TOPIC :ON
                 TOPIC :REGARDING TOPIC :RESPECTING TOPIC)
                (:S AGENT :O TOPIC)))

(define-mixin-category allow-64.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O BENEFICIARY) (:S AGENT :O THEME)))

(define-mixin-category allow-64.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S ALLOW-64.1)
  :realization ((:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category amalgamate-22.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S PATIENT (:M ADVERB) :WITH CO-PATIENT)
                (:S PATIENT (:M ADVERB))))

(define-mixin-category amalgamate-22.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP.CO-PATIENT WITH-PATIENT
           WITH-CO-PATIENT AMALGAMATE-22.2)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT :INTO CO-PATIENT :TO CO-PATIENT :WITH
                 CO-PATIENT)
                (:S AGENT :O PATIENT) (:S PATIENT :WITH CO-PATIENT)))

(define-mixin-category amalgamate-22.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-1)
  :realization ((:S PATIENT)))

(define-mixin-category amalgamate-22.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP WITH-PATIENT WITH-CO-PATIENT
           WITH-AGENT AMALGAMATE-22.2)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::CO-PATIENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT :WITH CO-PATIENT) (:S AGENT :O PATIENT)
                (:S PATIENT :WITH CO-PATIENT)))

(define-mixin-category amalgamate-22.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-2)
  :realization ((:S PATIENT)))

(define-mixin-category amalgamate-22.2-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP AMALGAMATE-22.2)
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category amalgamate-22.2-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT AMALGAMATE-22.2-3)
  :realization ((:S AGENT :O PATIENT :TO CO-PATIENT)))

(define-mixin-category amalgamate-22.2-3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT WITH-CO-PATIENT AMALGAMATE-22.2-3-1)
  :binds ((SPARSER::CO-PATIENT PHYSICAL-AGENT)
          (SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S PATIENT)))

(define-mixin-category amalgamate-22.2-3-2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT WITH-CO-PATIENT AMALGAMATE-22.2-3)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S PATIENT)))

(define-mixin-category amuse-31.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-ADV-MIDDLE NP-V-NP-PRO-ARB NP.CAUSE-V-NP
           NP-V-NP-ADJ WITH-EXPERIENCER WITH-STIMULUS WITH-RESULT)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER (:M ADVERB)) (:S STIMULUS)
                (:S STIMULUS :O EXPERIENCER)
                (:S STIMULUS :IO EXPERIENCER :OC RESULT-ROLE)))

(define-mixin-category animal_sounds-38
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP.THEME NP-V-PP.LOCATION
           NP.LOCATION-V-PP.AGENT WITH-AGENT WITH-THEME WITH-RECIPIENT
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT :O THEME)
                (:S AGENT :O LOCATION) (:S LOCATION :WITH AGENT)))

(define-mixin-category appeal-31.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER WITH-STIMULUS WITH-EXPERIENCER)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category appeal-31.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization ((:S STIMULUS :AT EXPERIENCER)))

(define-mixin-category appeal-31.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization ((:S STIMULUS :ON EXPERIENCER)))

(define-mixin-category appeal-31.4-3
  :specializes subcategorization-pattern
  :mixins (NP-V APPEAL-31.4)
  :realization ((:S STIMULUS)))

(define-mixin-category appear-48.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP-PP PP.LOCATION-V-NP NP-V-ADV
           WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:O THEME :LOC LOCATION)
                (:LOC LOCATION :O THEME) (:S THEME :O LOCATION)))

(define-mixin-category appoint-29.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.RESULT NP-V-NP-TO-BE-NP NP-V-NP WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO THEME :OC RESULT-ROLE) (:S AGENT :O THEME)))

(define-mixin-category assessment-34.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category assuming_position-50
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :LOC LOCATION)))

(define-mixin-category attack-60.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category attack-60.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT ATTACK-60.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT)))

(define-mixin-category attend-107.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-GOAL))

(define-mixin-category attend-107.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ATTEND-107.4)
  :realization ((:S THEME :O GOAL)))

(define-mixin-category attend-107.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP ATTEND-107.4)
  :realization ((:S THEME :NIL GOAL)))

(define-mixin-category avoid-52
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP.THEME NP-V-S_ING WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O LOCATION) (:S AGENT :O THEME)))

(define-mixin-category banish-10.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.DESTINATION WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION)))

(define-mixin-category base-97.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-PP.SOURCE-WHETHER-S
           NP-V-NP-PP.SOURCE-S_ING NP-V-NP-PP.SOURCE-S WITH-AGENT WITH-THEME
           WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :ON SOURCE)))

(define-mixin-category battle-36.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-PP.TOPIC-NP-S_ING NP-V-PP.THEME-WHETHER-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :WITH AGENT) (:S AGENT)
                (:S AGENT :WITH AGENT :ABOUT THEME :|\|| THEME :OVER THEME)
                (:S AGENT :ABOUT TOPIC :|\|| TOPIC :OVER TOPIC)
                (:S AGENT :ABOUT THEME :|\|| THEME :OVER THEME)))

(define-mixin-category battle-36.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-PP.THEME-WHETHER-S
           NP-V-NP-PP.THEME-WHAT-S NP-V-NP-PP.THEME-WHETHER-S_INF
           NP-V-NP-PP.THEME-WHAT-S_INF BATTLE-36.4)
  :realization ((:S AGENT :O AGENT)
                (:S AGENT :O AGENT :ABOUT THEME :|\|| THEME :OVER THEME)))

(define-mixin-category become-109.1
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ WITH-PATIENT WITH-RESULT)
  :realization ((:S PATIENT :O RESULT-ROLE)))

(define-mixin-category become-109.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE BECOME-109.1)
  :realization ((:S PATIENT :IN RESULT-ROLE :|\|| RESULT-ROLE :INTO
                 RESULT-ROLE)))

(define-mixin-category become-109.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BECOME-109.1-1)
  :realization ((:S PATIENT :O RESULT-ROLE)))

(define-mixin-category beg-58.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-S_INF WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RESULT-ROLE)))

(define-mixin-category beg-58.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT BEG-58.2)
  :realization ((:S AGENT :FOR RESULT-ROLE)))

(define-mixin-category beg-58.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT BEG-58.2-1)
  :realization ((:S AGENT :O PATIENT :FOR RESULT-ROLE)))

(define-mixin-category begin-55.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category begin-55.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING BEGIN-55.1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category begin-55.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-NP NP-V-PP.INSTRUMENT NP-V-NP-PP.INSTRUMENT
           NP.INSTRUMENT-V-NP BEGIN-55.1-1)
  :realization ((:S THEME) (:S AGENT :O THEME) (:S THEME :WITH INSTRUMENT)
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S INSTRUMENT :O THEME)))

(define-mixin-category being_dressed-41.3.3
  :specializes subcategorization-pattern
  :mixins (PASSIVE WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :IN THEME)))

(define-mixin-category bend-45.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S PATIENT) (:S PATIENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)))

(define-mixin-category benefit-72.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP WITH-CAUSE WITH-BENEFICIARY)
  :realization ((:S CAUSE :O BENEFICIARY) (:S BENEFICIARY)
                (:S BENEFICIARY :FROM CAUSE :BY CAUSE)))

(define-mixin-category berry-13.7
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category bill-54.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-NP.ASSET WITH-AGENT WITH-EXTENT
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :IO RECIPIENT :OC EXTENT)))

(define-mixin-category birth-28.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category birth-28.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BIRTH-28.2)
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category body_internal_motion-49.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PRONOUN) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category body_internal_states-40.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS)))

(define-mixin-category body_motion-49.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADV NP-V-ADV-NP WITH-AGENT WITH-THEME WITH-GOAL WITH-PATH)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :IO THEME :OC PATH) (:S AGENT :IO PATH :OC THEME)))

(define-mixin-category body_motion-49.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-PP NP-V-PP-PP BODY_MOTION-49.2)
  :realization ((:S AGENT :IO THEME :OC GOAL) (:S AGENT :O GOAL)
                (:S AGENT :DIR PATH) (:S AGENT :IO PATH :OC THEME)))

(define-mixin-category body_motion-49.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V BODY_MOTION-49.2-1)
  :realization ((:S AGENT)))

(define-mixin-category braid-41.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category break-45.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ
           NP-V-NP-ADJ-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S PATIENT) (:S PATIENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)
                (:S PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category break_down-45.8
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT)
  :realization ((:S PATIENT)))

(define-mixin-category breathe-40.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.DESTINATION NP-V-NP.THEME NP-V-NP.THEME-PP.DESTINATION
           WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :ON DESTINATION :ONTO DESTINATION)
                (:S AGENT :O THEME)
                (:S AGENT :O THEME :ON DESTINATION :ONTO DESTINATION)))

(define-mixin-category breathe-40.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BREATHE-40.1.2)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category bring-11.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-PP.DESTINATION-NP
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :AGAINST DESTINATION :BEFORE DESTINATION
                 :INTO DESTINATION :ON DESTINATION :TO DESTINATION :ONTO
                 DESTINATION)
                (:S AGENT :AGAINST DESTINATION :BEFORE DESTINATION :INTO
                 DESTINATION :ON DESTINATION :TO DESTINATION :ONTO DESTINATION
                 :O THEME)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S INSTRUMENT :IO THEME :OC DESTINATION)))

(define-mixin-category bring-11.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TOGETHER WITH-DESTINATION BRING-11.3)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization ((:S AGENT :IO DESTINATION :OC THEME) (:S AGENT :O THEME)))

(define-mixin-category build-26.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.BENEFICIARY-NP-PP NP-V-NP-PP.MATERIAL-PP.BENEFICIARY
           NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.PRODUCT-PP.BENEFICIARY
           NP.MATERIAL-V-NP NP-V-NP-NP-PP.ASSET NP-V-NP-PP.MATERIAL-PP.ASSET
           WITH-AGENT WITH-MATERIAL WITH-PRODUCT WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O PRODUCT) (:S AGENT)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT :O MATERIAL :INTO PRODUCT)
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :OC PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 BENEFICIARY)
                (:S AGENT :O MATERIAL :FOR BENEFICIARY)
                (:S AGENT :O MATERIAL :INTO PRODUCT :FOR BENEFICIARY)
                (:S MATERIAL :O PRODUCT)
                (:S AGENT :IO BENEFICIARY :OC PRODUCT :FOR EXTENT)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 EXTENT)))

(define-mixin-category build-26.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-P.ASSET NP.ASSET-V-NP NP.ASSET-V-NP-NP NP.ASSET-V-PP
           NP.ASSET-V-NP-PP BUILD-26.1)
  :realization ((:S AGENT :O PRODUCT :FOR EXTENT) (:S EXTENT :O PRODUCT)
                (:S EXTENT :IO BENEFICIARY :OC PRODUCT)
                (:S EXTENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S EXTENT :IO BENEFICIARY :OC PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)))

(define-mixin-category bulge-47.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization ((:S LOCATION :WITH THEME) (:S LOCATION)))

(define-mixin-category bully-59.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :INTO RESULT-ROLE)))

(define-mixin-category bump-18.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::LOCATION PHYSICAL))
  :realization ((:S THEME :AGAINST LOCATION :INTO LOCATION :ONTO LOCATION)))

(define-mixin-category bump-18.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-TOGETHER BUMP-18.4)
  :realization ((:S THEME)))

(define-mixin-category butter-9.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.DESTINATION NP-V-NP-PP.THEME WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O DESTINATION) (:S AGENT :O DESTINATION :WITH THEME)))

(define-mixin-category calibratable_cos-45.6.1
  :specializes subcategorization-pattern
  :mixins (NP.ATTRIBUTE-V NP.PATIENT-V-PP.ATTRIBUTE NP-V WITH-PATIENT
           WITH-ATTRIBUTE)
  :realization ((:S ATTRIBUTE :S PATIENT) (:S PATIENT :IN ATTRIBUTE)
                (:S PATIENT)))

(define-mixin-category calibratable_cos-45.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.SOURCE-PP.GOAL WITH-EXTENT
           WITH-SOURCE WITH-RESULT CALIBRATABLE_COS-45.6.1)
  :realization ((:S PATIENT :O EXTENT :FROM SOURCE :TO RESULT-ROLE)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO RESULT-ROLE)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO
                 RESULT-ROLE)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO
                 RESULT-ROLE)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO
                 RESULT-ROLE)
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM SOURCE :TO
                 RESULT-ROLE)))

(define-mixin-category calve-28.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category captain-29.8
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.BENEFICIARY WITH-AGENT WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :FOR BENEFICIARY)))

(define-mixin-category captain-29.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8)
  :realization ((:S AGENT :O BENEFICIARY)))

(define-mixin-category captain-29.8-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8-1)
  :realization ((:S BENEFICIARY :O AGENT)))

(define-mixin-category care-88.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-THAT-S NP-V-WHETHER/IF-S WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category care-88.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS-WHAT-S NP-V-WHAT-S NP-V-PP.STIMULUS-HOW/WHETHER-S
           CARE-88.1)
  :realization ((:S EXPERIENCER :O STIMULUS) (:S EXPERIENCER :ABOUT STIMULUS)))

(define-mixin-category caring-75.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))))

(define-mixin-category caring-75.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CARING-75.2)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category caring-75.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2-1)
  :realization ((:S AGENT :TO THEME)))

(define-mixin-category caring-75.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2)
  :realization ((:S AGENT :FOR THEME)))

(define-mixin-category carry-11.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION :SRC
                 SOURCE)))

(define-mixin-category carry-11.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION CARRY-11.4)
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION :SRC
                 SOURCE)))

(define-mixin-category carry-11.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION CARRY-11.4-1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization ((:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category carve-21.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)))

(define-mixin-category carve-21.2-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S PATIENT (:M ADVERB)) (:S INSTRUMENT :O PATIENT)
                (:S INSTRUMENT (:M ADVERB))))

(define-mixin-category carve-21.2-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S PATIENT (:M ADVERB)) (:S INSTRUMENT :O PATIENT)
                (:S INSTRUMENT (:M ADVERB))))

(define-mixin-category caused_calibratable_cos-45.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP-V-NP.PATIENT-NP.EXTENT-PP.SOURCE-PP.GOAL WITH-CAUSE WITH-PATIENT
           WITH-EXTENT WITH-SOURCE WITH-GOAL WITH-ATTRIBUTE)
  :realization ((:S CAUSE)))

(define-mixin-category caused_calibratable_cos-45.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.SOURCE-PP.GOAL WITH-ATTRIBUTE
           CAUSED_CALIBRATABLE_COS-45.6.2)
  :realization ((:S PATIENT :O EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO GOAL)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO GOAL)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM SOURCE :TO GOAL)))

(define-mixin-category change_bodily_state-40.8.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS)))

(define-mixin-category characterize-29.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-TO-BE-ADJ NP-V-NP-PP.ATTRIBUTE WITH-AGENT
           WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE)
                (:S AGENT :O THEME :AS ATTRIBUTE)))

(define-mixin-category characterize-29.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF CHARACTERIZE-29.2)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-WHAT-S NP-V-WHAT-S_INF CHARACTERIZE-29.2-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ NP-V-WHETHER/IF-S NP-V-WHAT-S NP-V-WHAT-S_INF
           CHARACTERIZE-29.2-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category chase-51.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.LOCATION NP-V-PP.THEME WITH-AGENT WITH-THEME
           WITH-PATH)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SPATIAL PATH)
                (:S AGENT :AFTER THEME)))

(define-mixin-category cheat-10.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O SOURCE) (:S AGENT :O SOURCE :OUT_OF THEME)))

(define-mixin-category cheat-10.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CHEAT-10.6.1)
  :realization ((:S AGENT :O SOURCE :FOR THEME)))

(define-mixin-category cheat-10.6.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE CHEAT-10.6.1-1)
  :realization ((:S AGENT :O THEME :FROM SOURCE)))

(define-mixin-category chew-39.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT)))

(define-mixin-category chew-39.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP-CONATIVE NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT) (:S AGENT :AT PATIENT)
                (:S AGENT :ON PATIENT)))

(define-mixin-category chew-39.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT) (:S AGENT :FROM PATIENT)))

(define-mixin-category chit_chat-37.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :WITH AGENT) (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT) (:S AGENT :ABOUT TOPIC :WITH AGENT)
                (:S AGENT :ABOUT TOPIC)))

(define-mixin-category chit_chat-37.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-NP-PP.CO-AGENT CHIT_CHAT-37.6)
  :realization ((:S AGENT :O TOPIC) (:S AGENT :O TOPIC :WITH AGENT)))

(define-mixin-category classify-29.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME
           WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :AS GOAL)
                (:S AGENT :O THEME :IN GOAL)))

(define-mixin-category clear-10.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP.LOCATION-PP.THEME
           WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL))
  :realization ((:S AGENT :O SOURCE) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O SOURCE :OF THEME)))

(define-mixin-category clear-10.3-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V NP-V-PP.LOCATION CLEAR-10.3)
  :realization ((:S SOURCE) (:S THEME :SRC SOURCE)))

(define-mixin-category cling-22.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-TOGETHER WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME :TO THEME :WITH THEME) (:S THEME)))

(define-mixin-category cognize-85
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.STIMULUS NP-V-PP.STIMULUS-HOW/WHETHER-S NP-V-THAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER :OF STIMULUS) (:S EXPERIENCER :ABOUT STIMULUS)
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category coil-9.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.LOCATION NP-V-PP.LOCATION
           NP-V-ADV-MIDDLE-PP.LOCATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR NIL NIL)))
  :realization ((:S AGENT :O THEME :PATH DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S THEME (:M ADVERB) :PATH DESTINATION)))

(define-mixin-category coil-9.6-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE COIL-9.6)
  :realization ((:S THEME (:M ADVERB))))

(define-mixin-category coloring-24
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJP NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category compel-59.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT NP-V-NP-S_INF WITH-AGENT
           WITH-PATIENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :INTO PREDICATE)
                (:S AGENT :IO PATIENT :OC PREDICATE)))

(define-mixin-category complain-37.8
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-THAT-S NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.TOPIC NP-V-PP.TOPIC-PP.RECIPIENT NP-V-S-QUOTE
           NP-V-PP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-PP.TOPIC WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :TO RECIPIENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :ABOUT TOPIC :TO RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC)))

(define-mixin-category complete-55.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category complete-55.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING COMPLETE-55.2)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category comprehend-87.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-S_ING NP-V-WHY-S
           NP-V-WHAT-S NP-V-THAT-S WITH-EXPERIENCER WITH-ATTRIBUTE
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S EXPERIENCER :O STIMULUS :AS ATTRIBUTE)
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category comprehend-87.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-HOW-S_INF NP-V-NP-TO-BE-NP COMPREHEND-87.2)
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category comprehend-87.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V COMPREHEND-87.2-1)
  :realization ((:S EXPERIENCER)))

(define-mixin-category comprehend-87.2-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           NP-V-NP-PP.ATTRIBUTE COMPREHEND-87.2-1-1)
  :realization ((:S EXPERIENCER :ABOUT STIMULUS :|\|| STIMULUS :OF STIMULUS)
                (:S EXPERIENCER)))

(define-mixin-category comprise-107.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S ATTRIBUTE :O THEME)))

(define-mixin-category comprise-107.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COMPRISE-107.2)
  :realization ((:S THEME :O ATTRIBUTE)))

(define-mixin-category concealment-16
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT
           WITH-BENEFICIARY WITH-PATIENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT :FROM BENEFICIARY)
                (:S AGENT :O PATIENT :LOC LOCATION) (:S AGENT :O PATIENT)))

(define-mixin-category concealment-16-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.BENEFICIARY NP-V-PP.LOCATION CONCEALMENT-16)
  :realization ((:S AGENT) (:S AGENT :FROM BENEFICIARY)
                (:S AGENT :LOC LOCATION)))

(define-mixin-category conduct-111.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME) (:S AGENT :IO THEME :OC BENEFICIARY)))

(define-mixin-category confess-37.10
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-NP NP-V-NP-PP.RECIPIENT
           NP-V-S_ING NP-V-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S NP-V-THAT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :TO RECIPIENT)
                (:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category confine-92
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION)
          (SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category confine-92-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION CONFINE-92)
  :realization ((:S AGENT :O THEME :TO DESTINATION)))

(define-mixin-category confront-98
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :WITH INSTRUMENT)))

(define-mixin-category conjecture-29.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP NP-V-THAT-S WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO THEME :OC PREDICATE) (:S AGENT :O THEME)))

(define-mixin-category conjecture-29.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONJECTURE-29.5)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category conjecture-29.5-2
  :specializes subcategorization-pattern
  :mixins (NP-V-S CONJECTURE-29.5)
  :realization ((:S AGENT :LIKE THEME :|\|| THEME :AS THEME :IF THEME :|\||
                 THEME :AS THEME :THOUGH THEME)))

(define-mixin-category consider-29.9
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category consider-29.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP NP-V-THAT-S CONSIDER-29.9)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category consider-29.9-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ NP-V-WHETHER/IF-S NP-V-WHAT-S NP-V-WHAT-S_INF
           CONSIDER-29.9-1)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category consider-29.9-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-ADJ NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE
           NP-V-WHETHER-S_INF CONSIDER-29.9-1-1)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE)
                (:S AGENT :O THEME :FOR ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category consider-29.9-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S CONSIDER-29.9)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category conspire-71
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT NP-V-PP.BENEFICIARY NP-V-S_INF WITH-AGENT
           WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :WITH AGENT)
                (:S AGENT :AGAINST BENEFICIARY) (:S AGENT :O THEME)))

(define-mixin-category consume-66
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING WITH-AGENT WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O EXTENT) (:S AGENT :IO EXTENT :OC GOAL)))

(define-mixin-category consume-66-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL CONSUME-66)
  :realization ((:S AGENT :O EXTENT :ON GOAL)))

(define-mixin-category contain-15.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category contiguous_location-47.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME :O THEME)))

(define-mixin-category contiguous_location-47.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization ((:S THEME :S THEME)))

(define-mixin-category contiguous_location-47.8-2
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization ((:S THEME)))

(define-mixin-category continue-55.3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP.THEME-V NP-V NP-V-PP.TIME WITH-AGENT WITH-THEME
           TEMPORALLY-LOCALIZED)
  :binds ((SPARSER::CERTAINTY TIME)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S THEME) (:S AGENT)
                (:S THEME :UNTIL CERTAINTY) (:S AGENT :UNTIL CERTAINTY)))

(define-mixin-category contribute-13.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP.THEME- NP-V-PP.RECIPIENT-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :TO RECIPIENT) (:S AGENT :O THEME)
                (:S AGENT :TO RECIPIENT :O THEME)))

(define-mixin-category contribute-13.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT NP-V-NP-PP.RECIPIENT CONTRIBUTE-13.2)
  :realization ((:S AGENT :TO RECIPIENT) (:S AGENT :O THEME :AMONG RECIPIENT)))

(define-mixin-category contribute-13.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTRIBUTE-13.2-1)
  :realization ((:S AGENT)))

(define-mixin-category contribute-13.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CONTRIBUTE-13.2)
  :realization ((:S AGENT :IO RECIPIENT :OC THEME)))

(define-mixin-category contribute-13.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONTRIBUTE-13.2-2)
  :realization ((:S AGENT :O RECIPIENT)))

(define-mixin-category convert-26.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-PP.GOAL WITH-PATIENT WITH-RESULT WITH-SOURCE)
  :realization ((:S PATIENT :TO RESULT-ROLE)))

(define-mixin-category convert-26.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE-PP.GOAL CONVERT-26.6.2)
  :realization ((:S PATIENT :FROM SOURCE :TO RESULT-ROLE)))

(define-mixin-category convert-26.6.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT
           CONVERT-26.6.2-1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S PATIENT) (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE)))

(define-mixin-category cooking-45.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT
           NP-V-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT WITH-INSTRUMENT
           WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :IN INSTRUMENT :ON INSTRUMENT :WITH
                 INSTRUMENT)
                (:S PATIENT) (:S PATIENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :IN
                 INSTRUMENT :ON INSTRUMENT :WITH INSTRUMENT)
                (:S PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :IN INSTRUMENT
                 :ON INSTRUMENT :WITH INSTRUMENT)))

(define-mixin-category cooperate-73.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))))

(define-mixin-category cooperate-73.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           COOPERATE-73.1)
  :realization ((:S AGENT :ON THEME) (:S AGENT :WITH AGENT :ON THEME)
                (:S AGENT :WITH AGENT :IN THEME) (:S AGENT :IN THEME)))

(define-mixin-category cooperate-73.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.THEME-S_ING COOPERATE-73.1)
  :realization ((:S AGENT :IN THEME)))

(define-mixin-category cooperate-73.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING COOPERATE-73.1)
  :realization ((:S AGENT :ON THEME) (:S AGENT :WITH AGENT :ON THEME)
                (:S AGENT :AT THEME) (:S AGENT :WITH AGENT :AT THEME)))

(define-mixin-category cope-83
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :WITH THEME)))

(define-mixin-category cope-83-1
  :specializes subcategorization-pattern
  :mixins (NP-V COPE-83)
  :realization ((:S AGENT)))

(define-mixin-category cope-83-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COPE-83-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category correlate-86.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-S_ING WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S THEME :WITH THEME) (:S AGENT :O THEME :WITH THEME)))

(define-mixin-category correspond-36.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S NP-V-PP.THEME-WHETHER/IF-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-WHAT-S WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :WITH AGENT :ABOUT TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category correspond-36.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT-HOW-S NP-V-PP.CO-AGENT-HOW-S_INF NP-V-WHAT-S_INF
           CORRESPOND-36.1.1)
  :realization ((:S AGENT :WITH AGENT :O TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category correspond-36.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER-S_INF CORRESPOND-36.1.1-1)
  :realization ((:S AGENT :O TOPIC)))

(define-mixin-category cost-54.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE NP-V-NP-NP WITH-THEME WITH-PATH WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME :O PATH) (:S THEME :IO BENEFICIARY :OC PATH)))

(define-mixin-category crane-40.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-PP.RECIPIENT-PP.THEME
           WITH-AGENT WITH-PATIENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :DEST_DIR RECIPIENT)
                (:S AGENT :O PATIENT :DEST_DIR RECIPIENT :IN TOPIC)))

(define-mixin-category create-26.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MATERIAL NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-RESULT WITH-MATERIAL
           WITH-BENEFICIARY WITH-ATTRIBUTE)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O RESULT-ROLE)
                (:S AGENT :O RESULT-ROLE :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT :O RESULT-ROLE :FOR BENEFICIARY)
                (:S AGENT :IO RESULT-ROLE :OC ATTRIBUTE)))

(define-mixin-category create-26.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V CREATE-26.4)
  :realization ((:S AGENT)))

(define-mixin-category create-26.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP CREATE-26.4-1)
  :realization ((:S AGENT :IO BENEFICIARY :OC RESULT-ROLE)))

(define-mixin-category curtsey-40.3.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP NP-V-NP-PP.RECIPIENT WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT)))

(define-mixin-category cut-21.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP
           NP-V-ADVP-MIDDLE NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT-PP.INSTRUMENT
           NP-V-NP-ADJP NP-V-NP-PP.RESULT NP-V-NP-PP.SOURCE
           NP-V-NP-PP.SOURCE-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-SOURCE WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :|THROUGH\|INTO| PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S PATIENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT) (:S INSTRUMENT (:M ADVERB))
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)
                (:S INSTRUMENT :IO PATIENT :OC RESULT-ROLE)
                (:S INSTRUMENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :FROM SOURCE)
                (:S AGENT :O PATIENT :FROM SOURCE :WITH INSTRUMENT)))

(define-mixin-category cut-21.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT CUT-21.1)
  :binds ((SPARSER::PATIENT (:OR NIL PRONOUN)))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category debone-10.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O SOURCE)))

(define-mixin-category declare-29.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :IO THEME :OC RESULT-ROLE) (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S NP-V-NP-ADJ DECLARE-29.4)
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :AS RESULT-ROLE)))

(define-mixin-category declare-29.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S_INF NP-V-HOW-S DECLARE-29.4-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S_INF DECLARE-29.4-1-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER/IF-S_INF DECLARE-29.4-1-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING DECLARE-29.4-1-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category declare-29.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF DECLARE-29.4)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category dedicate-79
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :TO GOAL)))

(define-mixin-category deduce-97.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-THAT-S-PP.THEME NP-V-THAT-S
           WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :FROM SOURCE)
                (:S AGENT :FROM THEME :O SOURCE) (:S AGENT :O THEME)))

(define-mixin-category defend-72.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-S_ING WITH-AGENT WITH-BENEFICIARY
           WITH-THEME)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O BENEFICIARY :AGAINST THEME)
                (:S AGENT :O BENEFICIARY)))

(define-mixin-category deprive-10.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O SOURCE) (:S AGENT :O SOURCE :OF THEME)))

(define-mixin-category destroy-44
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP.INSTRUMENT-V-NP WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S INSTRUMENT :O PATIENT)))

(define-mixin-category devour-39.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PATHOGEN)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category die-42.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT WITH-CAUSE)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT))
  :realization ((:S PATIENT)))

(define-mixin-category die-42.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CAUSE DIE-42.4)
  :realization ((:S PATIENT :OF CAUSE :|\|| CAUSE :FROM CAUSE)))

(define-mixin-category differ-23.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V WITH-THEME WITH-THEME)
  :realization ((:S THEME :FROM THEME :WITH THEME) (:S THEME)))

(define-mixin-category dine-39.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :ON PATIENT)))

(define-mixin-category disappearance-48.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT WITH-SOURCE)
  :realization ((:S PATIENT)))

(define-mixin-category disappearance-48.2-1
  :specializes subcategorization-pattern
  :mixins (THERE-V-PP-NP DISAPPEARANCE-48.2)
  :realization ((:S PATIENT :FROM SOURCE)))

(define-mixin-category disassemble-23.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT NP-V-ADV-MIDDLE
           WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :FROM CO-PATIENT)
                (:S PATIENT (:M ADVERB))))

(define-mixin-category discover-84
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-THAT-S NP-V-WHAT-S
           NP-V-WHAT-S_INF WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category discover-84-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-S_ING NP-V-PP.SOURCE-HOW-S NP-V-PP.SOURCE-HOW-S_INF
           NP-V-PP.SOURCE-PP.THEME-WHETHER/IF-S NP-V-PP.SOURCE-PP.THEME-WHAT-S
           NP-V-PP.SOURCE-PP.THEME-WHAT-S_INF
           NP-V-PP.SOURCE-PP.THEME-WHETHER-S_INF NP-V-WHAT-S_INF DISCOVER-84)
  :realization ((:S AGENT :ABOUT THEME) (:S AGENT :FROM SOURCE :O THEME)
                (:S AGENT :FROM SOURCE :ABOUT THEME) (:S AGENT :O THEME)))

(define-mixin-category discover-84-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-WHAT-S NP-V-PP.THEME
           NP-V-PP.THEME-PP.SOURCE DISCOVER-84-1)
  :realization ((:S AGENT) (:S AGENT :ABOUT THEME)
                (:S AGENT :ABOUT THEME :FROM SOURCE)))

(define-mixin-category disfunction-105.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization ((:S THEME)))

(define-mixin-category distinguish-23.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-INSTRUMENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category distinguish-23.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-PP DISTINGUISH-23.5)
  :realization ((:S AGENT :O THEME) (:S INSTRUMENT :O THEME :FROM THEME)
                (:S AGENT :BETWEEN THEME :O THEME)))

(define-mixin-category dress-41.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT PRONOUN))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :O PATIENT)))

(define-mixin-category dressing_well-41.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-UP NP-V-UP-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PRONOUN)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category drive-11.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)))

(define-mixin-category drive-11.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION DRIVE-11.5)
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)))

(define-mixin-category dub-29.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO THEME :OC RESULT-ROLE) (:S AGENT :O THEME)))

(define-mixin-category earn-54.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-EXTENT)
  :realization ((:S THEME :O EXTENT)))

(define-mixin-category eat-39.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT)))

(define-mixin-category eat-39.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.SOURCE WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT (:AND/OR PATHOGEN SOLID)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT) (:S AGENT :SRC SOURCE)))

(define-mixin-category eat-39.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.SOURCE WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT (:AND/OR PATHOGEN SOLID)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT) (:S AGENT :SRC SOURCE)))

(define-mixin-category eat-39.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT PATHOGEN))
  :realization ((:S AGENT) (:S AGENT :O PATIENT)))

(define-mixin-category empathize-88.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :WITH STIMULUS)))

(define-mixin-category employment-95.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP NP-V-PP-PP WITH-AGENT WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :O AGENT)
                (:S AGENT :ON THEME :|\|| THEME :IN THEME :|\|| THEME :AT
                 THEME)
                (:S AGENT :ON THEME :O AGENT)
                (:S AGENT :IO ATTRIBUTE :OC AGENT)))

(define-mixin-category encounter-30.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category enforce-63
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category engender-27.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::THEME ABSTRACT))
  :realization ((:S CAUSE :O THEME)))

(define-mixin-category engender-27.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S ENGENDER-27.1)
  :realization ((:S CAUSE :IO THEME :OC PREDICATE)))

(define-mixin-category ensure-99
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-NP NP-V-NP-PP.BENEFICIARY NP-V-THAT-S PREDICATION
           WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization ((:S PREDICATE :IO BENEFICIARY :OC THEME)
                (:S PREDICATE :O THEME :FOR BENEFICIARY)
                (:S PREDICATE :O THEME)))

(define-mixin-category entity_specific_cos-45.5
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization ((:S PATIENT)))

(define-mixin-category entity_specific_modes_being-47.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP NP.LOCATION-V-NP
           NP.LOCATION-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:O THEME)
                (:LOC LOCATION :O THEME) (:S LOCATION :WITH THEME)))

(define-mixin-category equip-13.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-FULFILLING-PP WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT :WITH THEME)))

(define-mixin-category equip-13.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT EQUIP-13.4.2)
  :realization ((:S AGENT :O RECIPIENT)))

(define-mixin-category equip-13.4.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP EQUIP-13.4.2-1)
  :realization ((:S THEME :O RECIPIENT)))

(define-mixin-category escape-51.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-PP.TRAJECTORY
           NP-V-PP.INITIAL_LOC-PP.DESTINATION WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::DESTINATION PHYSICAL)
          (SPARSER::SOURCE PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME :PATH DESTINATION) (:S THEME :PATH PATH)
                (:S THEME :PATH SOURCE :PATH DESTINATION)))

(define-mixin-category escape-51.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOC ESCAPE-51.1)
  :realization ((:S THEME) (:S THEME :PATH SOURCE)))

(define-mixin-category escape-51.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization ((:S THEME :O SOURCE)))

(define-mixin-category escape-51.1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization ((:S THEME :O DESTINATION)))

(define-mixin-category escape-51.1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization ((:S THEME :O PATH)))

(define-mixin-category establish-55.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category establish-55.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-INSTRUMENT ESTABLISH-55.5)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S AGENT :O THEME :WITH INSTRUMENT)))

(define-mixin-category estimate-34.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.VALUE WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :AT PATH)))

(define-mixin-category estimate-34.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-HOW-S NP-V-NP-TO-BE-ADJ NP-V-THAT-S NP-V-WHAT-S
           ESTIMATE-34.2)
  :realization ((:S AGENT :O PATH) (:S AGENT :O THEME)))

(define-mixin-category exceed-90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-THEME WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S THEME :O THEME) (:S THEME :O THEME :IN ATTRIBUTE)))

(define-mixin-category exchange-13.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME NP-V-PP.THEME NP-V-NP-PP.CO-AGENT NP-V-NP
           WITH-AGENT WITH-THEME WITH-THEME WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :FOR THEME) (:S AGENT :LOC THEME)
                (:S AGENT :O THEME :WITH AGENT) (:S AGENT :O THEME)))

(define-mixin-category exclude-107.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :FROM GOAL) (:S AGENT :O THEME)))

(define-mixin-category exclude-107.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL-S_ING EXCLUDE-107.3)
  :realization ((:S AGENT :O THEME :FROM GOAL)))

(define-mixin-category exhale-40.1.3
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT PHYSICAL-AGENT)))

(define-mixin-category exhale-40.1.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization ((:S INSTRUMENT) (:S INSTRUMENT :O THEME)))

(define-mixin-category exhale-40.1.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization ((:S INSTRUMENT) (:S INSTRUMENT :O THEME)))

(define-mixin-category exist-47.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization ((:S THEME) (:S THEME :LOC LOCATION)))

(define-mixin-category exist-47.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP WITH-INSTRUMENT WITH-MANNER EXIST-47.1)
  :binds ((SPARSER::MANNER ADVERB) (SPARSER::INSTRUMENT OBJECT))
  :realization ((:S THEME :O INSTRUMENT) (:S THEME :NIL INSTRUMENT)
                (:S THEME :NIL MANNER)))

(define-mixin-category feeding-39.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP WITH-AGENT WITH-THEME
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :O THEME :TO RECIPIENT)
                (:S AGENT :IO RECIPIENT :OC THEME)))

(define-mixin-category ferret-35.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-AGENT WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :DIR SOURCE)))

(define-mixin-category fill-9.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP NP-V-NP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O DESTINATION :WITH THEME) (:S THEME :O DESTINATION)
                (:S AGENT :O DESTINATION)))

(define-mixin-category fill-9.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FILL-9.8)
  :realization ((:S AGENT :O DESTINATION :IN THEME)))

(define-mixin-category fire-10.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-GOAL WITH-ATTRIBUTE)
  :binds ((SPARSER::SOURCE COMPANY)
          (SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :FROM SOURCE)
                (:S AGENT :O THEME :AS ATTRIBUTE)))

(define-mixin-category fit-54.3
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-NP NP-V-NP-PP.LOCATION WITH-AGENT WITH-PATH
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S LOCATION :O PATH) (:S AGENT :O PATH :IN LOCATION)))

(define-mixin-category flinch-40.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :AT STIMULUS :FROM STIMULUS)))

(define-mixin-category floss-41.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.INSTRUMENT NP-V-PP.INSTRUMENT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :WITH INSTRUMENT)))

(define-mixin-category focus-87.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT)))
  :realization ((:S AGENT :ON TOPIC)))

(define-mixin-category focus-87.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF FOCUS-87.1)
  :realization ((:S AGENT) (:S AGENT :ABOUT TOPIC)))

(define-mixin-category forbid-64.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O BENEFICIARY :FROM THEME)))

(define-mixin-category forbid-64.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP FORBID-64.4)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category free-10.6.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-10.6.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING FREE-10.6.3)
  :realization ((:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-10.6.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FREE-10.6.3-1)
  :realization ((:S CAUSE :O SOURCE :FROM THEME)))

(define-mixin-category free-80
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-80-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING FREE-80)
  :realization ((:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-80-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FREE-80-1)
  :realization ((:S CAUSE :O SOURCE :FROM THEME)))

(define-mixin-category fulfilling-13.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-FULFILLING-PP.THEME NP-V-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :TO RECIPIENT :|\|| RECIPIENT :FOR
                 RECIPIENT)
                (:S AGENT :O RECIPIENT :WITH THEME) (:S AGENT :O THEME)))

(define-mixin-category fulfilling-13.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP FULFILLING-13.4.1)
  :realization ((:S AGENT :O RECIPIENT)))

(define-mixin-category fulfilling-13.4.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT WITH-RECIPIENT WITH-AGENT FULFILLING-13.4.1)
  :binds ((SPARSER::AGENT (:OR ABSTRACT PHYSICAL-AGENT))
          (SPARSER::RECIPIENT (:OR ABSTRACT PHYSICAL-AGENT)))
  :realization ((:S AGENT :FOR RECIPIENT)))

(define-mixin-category function-105.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization ((:S THEME)))

(define-mixin-category function-105.2.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP PREDICATION FUNCTION-105.2.1)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization ((:S THEME :O PREDICATE)))

(define-mixin-category funnel-9.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :DEST_CONF DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)))

(define-mixin-category funnel-9.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION FUNNEL-9.3)
  :realization ((:S AGENT :O THEME :BETWEEN DESTINATION :IN_BETWEEN
                 DESTINATION)))

(define-mixin-category funnel-9.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION FUNNEL-9.3-1)
  :realization ((:S THEME :INTO DESTINATION)))

(define-mixin-category future_having-13.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME- NP-V-NP-DATIVE-NP NP-V-NP-PP.GOAL NP-V-NP-PP-PP
           WITH-AGENT WITH-THEME WITH-BENEFICIARY WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME :TO GOAL) (:S AGENT :O THEME)
                (:S AGENT :IO GOAL :OC THEME) (:S AGENT :O THEME :FOR GOAL)
                (:S AGENT)))

(define-mixin-category future_having-13.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP-PP FUTURE_HAVING-13.3)
  :realization ((:S AGENT)))

(define-mixin-category get-13.5.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.ASSET NP.ASSET-V-NP
           NP-V-NP-PP.SOURCE-NP.ASSET WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT (:AND/OR LOCATION REGION))
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :FROM SOURCE)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :OC THEME)
                (:S AGENT :O THEME :FOR EXTENT) (:S EXTENT :O THEME)
                (:S AGENT :O THEME :FROM SOURCE :AT EXTENT :FOR EXTENT)))

(define-mixin-category get-13.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-SOURCE GET-13.5.1)
  :binds ((SPARSER::SOURCE ABSTRACT))
  :realization ((:S AGENT :O THEME :FROM SOURCE :FOR SOURCE :ON SOURCE)))

(define-mixin-category give-13.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP NP-V-NP NP-V-PP.RECIPIENT
           WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :TO RECIPIENT)
                (:S AGENT :IO RECIPIENT :OC THEME) (:S AGENT :O THEME)
                (:S AGENT :TO RECIPIENT)))

(define-mixin-category give-13.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP-V-NP-PP.RECIPIENT-PP.ASSET NP-V-NP-NP-PP.ASSET
           WITH-EXTENT GIVE-13.1)
  :realization ((:S AGENT :O THEME :FOR EXTENT :AT EXTENT)
                (:S AGENT :O THEME :TO RECIPIENT :AT EXTENT :FOR EXTENT :ON
                 EXTENT)
                (:S AGENT :IO RECIPIENT :OC THEME :AT EXTENT :FOR EXTENT :ON
                 EXTENT)))

(define-mixin-category gobble-39.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT)))

(define-mixin-category gobble-39.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-UP NP-V-NP-DOWN WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category gobble-39.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-DOWN-NP WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category gorge-39.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :ON PATIENT)))

(define-mixin-category groom-41.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category grow-26.2.1
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP.PRODUCT-V-PP.MATERIAL
           NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT WITH-AGENT
           WITH-PATIENT WITH-PRODUCT)
  :binds ((SPARSER::PRODUCT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S PATIENT :INTO PRODUCT)
                (:S PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S AGENT :O PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S AGENT :O PATIENT :INTO PRODUCT)))

(define-mixin-category harmonize-22.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV NP-V-PP NP-V-ADV-PP NP-V WITH-THEME WITH-THEME)
  :realization ((:S THEME (:M ADVERB)) (:S THEME :O THEME)
                (:S THEME (:M ADVERB) :O THEME) (:S THEME)))

(define-mixin-category help-72.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))))

(define-mixin-category help-72.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-S_ING NP-V-NP-S_INF NP-V-S_ING
           HELP-72.1)
  :realization ((:S AGENT :O BENEFICIARY) (:S AGENT :O BENEFICIARY :WITH THEME)
                (:S AGENT :IO BENEFICIARY :OC THEME) (:S AGENT :WITH THEME)))

(define-mixin-category help-72.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME HELP-72.1-1)
  :realization ((:S AGENT :WITH THEME)))

(define-mixin-category help-72.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.BENEFICIARY NP-V-PP.BENEFICIARY-PP.THEME HELP-72.1)
  :realization ((:S AGENT :WITH BENEFICIARY :|\|| BENEFICIARY :FOR BENEFICIARY)))

(define-mixin-category herd-47.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.THEME NP-V-NP-TOGETHER WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S THEME) (:S AGENT :O THEME)))

(define-mixin-category hiccup-40.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category hire-13.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :AS ATTRIBUTE)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category hit-18.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-NP-TOGETHER
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP NP.INSTRUMENT-V-NP
           NP-V-NP-ADJP NP-V-NP-ADJP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)
                (:S AGENT :O INSTRUMENT :AGAINST PATIENT :ON PATIENT)
                (:S INSTRUMENT :O PATIENT)
                (:S INSTRUMENT :IO PATIENT :OC RESULT-ROLE)
                (:S INSTRUMENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category hit-18.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP-PP WITH-INSTRUMENT HIT-18.1)
  :binds ((SPARSER::INSTRUMENT (:OR NIL PRONOUN)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category hold-15.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL)) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category hunt-35.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-PP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-NP-PP.LOCATION NP-V-NP NP-V WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :O THEME :LOC LOCATION) (:S AGENT :O THEME)
                (:S AGENT)))

(define-mixin-category hurt-40.8.3
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT)))

(define-mixin-category hurt-40.8.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT HURT-40.8.3)
  :realization ((:S EXPERIENCER :O PATIENT)))

(define-mixin-category hurt-40.8.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V HURT-40.8.3-1)
  :realization ((:S PATIENT)))

(define-mixin-category hurt-40.8.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HURT-40.8.3)
  :realization ((:S EXPERIENCER :O PATIENT)))

(define-mixin-category illustrate-25.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O DESTINATION) (:S AGENT :O DESTINATION :WITH THEME)))

(define-mixin-category image_impression-25.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME
           NP-V-NP.DESTINATION NP-V-NP.THEME NP-V WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL))
  :realization ((:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)
                (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category indicate-78
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-WHETHER/IF-S NP-V-WHAT-S
           WITH-RECIPIENT WITH-CAUSE WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S CAUSE :O TOPIC)))

(define-mixin-category indicate-78-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHETHER/IF-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-HOW-S INDICATE-78)
  :realization ((:S CAUSE :TO RECIPIENT :O TOPIC)))

(define-mixin-category indicate-78-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP INDICATE-78-1)
  :realization ((:S CAUSE :O TOPIC)))

(define-mixin-category initiate_communication-37.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT WITH-AGENT WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT)))

(define-mixin-category initiate_communication-37.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V INITIATE_COMMUNICATION-37.4.2)
  :realization ((:S AGENT)))

(define-mixin-category inquire-37.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V NP-V-NP.RECIPIENT NP-V-NP.TOPIC
           NP-V-NP-PP.TOPIC NP-V-NP-WHETHER-S NP-V-NP-WHAT-S
           NP-V-NP-WHETHER-S_INF NP-V-NP-WHAT-S_INF NP-V-PP.TOPIC-WHETHER-S
           NP-V-NP-PP.TOPIC-WHAT-S NP-V-PP.TOPIC-WHETHER-S_INF
           NP-V-PP.TOPIC-WHAT-S_INF NP-V-PP.TOPIC NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-WHETHER-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S_INF
           NP-V-PP.RECIPIENT-PP.TOPIC-WHETHER-S_INF NP-V-WHETHER-S NP-V-WHAT-S
           NP-V-WHETHER-S_INF NP-V-WHAT-S_INF NP-V-NP-HOW-S WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :O RECIPIENT)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :OF RECIPIENT :O TOPIC)
                (:S AGENT :OF RECIPIENT :ABOUT TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category instr_communication-37.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.RECIPIENT NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP
           NP-V-NP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-S-QUOTE NP-V-NP-PP.TOPIC
           NP-V-THAT-S NP-V-WHEN-S_INF NP-V-S_INF NP-V-NP.RECIPIENT-THAT-S
           NP-V-NP.RECIPIENT-WHEN-S_INF NP-V-NP.RECIPIENT-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHEN-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-FOR-NP-S_INF WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :O TOPIC :TO RECIPIENT)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :FOR TOPIC)))

(define-mixin-category intend-61.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O TOPIC) (:S AGENT :O TOPIC :AS ATTRIBUTE)))

(define-mixin-category intend-61.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S INTEND-61.2)
  :realization ((:S AGENT :O TOPIC)))

(define-mixin-category intend-61.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING INTEND-61.2-1)
  :realization ((:S AGENT :O TOPIC)))

(define-mixin-category interact-36.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category interrogate-37.1.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.TOPIC WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :O RECIPIENT :AS ATTRIBUTE)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)))

(define-mixin-category invest-13.5.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-AGENT WITH-THEME WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O GOAL)))

(define-mixin-category invest-13.5.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP-PP.THEME INVEST-13.5.4)
  :realization ((:S AGENT :IO EXTENT :OC GOAL) (:S AGENT :IO EXTENT :OC THEME)))

(define-mixin-category investigate-35.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION-PP.THEME NP-V-NP.LOCATION WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O LOCATION :FOR THEME) (:S AGENT :O LOCATION)))

(define-mixin-category involve-107.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :IN GOAL)))

(define-mixin-category judgment-33.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category judgment-33.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE JUDGMENT-33.1)
  :realization ((:S AGENT :O THEME :AS ATTRIBUTE)))

(define-mixin-category judgment-33.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP JUDGMENT-33.1-1)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category keep-15.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :LOC LOCATION) (:S AGENT :O THEME)))

(define-mixin-category knead-26.5
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.MATERIAL WITH-AGENT WITH-PRODUCT WITH-MATERIAL)
  :binds ((SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S MATERIAL :INTO PRODUCT)
                (:S AGENT :O MATERIAL :INTO PRODUCT) (:S AGENT :O MATERIAL)))

(define-mixin-category learn-14
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-PP.SOURCE NP-V-NP WITH-AGENT WITH-TOPIC
           WITH-SOURCE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O TOPIC :FROM SOURCE) (:S AGENT :FROM SOURCE)
                (:S AGENT :O TOPIC)))

(define-mixin-category learn-14-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEARN-14)
  :realization ((:S AGENT)))

(define-mixin-category learn-14-2
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-WHAT-S NP-V-PP.SOURCE-HOW-S NP-V-PP.SOURCE-WH-S_INF
           LEARN-14)
  :realization ((:S AGENT :O TOPIC) (:S AGENT :FROM SOURCE :O TOPIC)))

(define-mixin-category learn-14-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC LEARN-14-2)
  :realization ((:S AGENT :OF TOPIC :ABOUT TOPIC)))

(define-mixin-category leave-51.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.INITIAL_LOCATION WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE PHYSICAL-AGENT) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME :O SOURCE)))

(define-mixin-category leave-51.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEAVE-51.2)
  :realization ((:S THEME)))

(define-mixin-category lecture-37.11
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :ABOUT TOPIC)))

(define-mixin-category lecture-37.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.RECIPIENT-PP.TOPIC LECTURE-37.11)
  :realization ((:S AGENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC)))

(define-mixin-category lecture-37.11-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC-S_ING LECTURE-37.11-1)
  :realization ((:S AGENT :ABOUT TOPIC)))

(define-mixin-category lecture-37.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.TOPIC-S_ING LECTURE-37.11)
  :realization ((:S AGENT :ABOUT TOPIC) (:S AGENT :ON TOPIC)))

(define-mixin-category let-64.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category light_emission-43.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME THERE-V-NP-PP.LOCATION
           PP.LOCATION-THERE-V-NP NP-V-NP.THEME WITH-THEME HAS-LOCATION
           WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:S LOCATION :WITH THEME)
                (:O THEME :LOC LOCATION) (:LOC LOCATION :O THEME)
                (:S AGENT :O THEME)))

(define-mixin-category limit-76
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL NP-V-NP-S_INF WITH-CAUSE
           WITH-PATIENT WITH-GOAL)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S CAUSE :O PATIENT) (:S CAUSE :O PATIENT :TO GOAL)
                (:S CAUSE :IO PATIENT :OC GOAL)))

(define-mixin-category linger-53.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.THEME WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :LOC LOCATION) (:S AGENT :OVER THEME)))

(define-mixin-category linger-53.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP LINGER-53.1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category lodge-46
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-ADV WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME :AT LOCATION :IN LOCATION :WITH LOCATION)
                (:S THEME :O LOCATION)))

(define-mixin-category long-32.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category long-32.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization ((:S INSTRUMENT :FOR THEME)))

(define-mixin-category long-32.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization ((:S INSTRUMENT :AFTER THEME)))

(define-mixin-category lure-59.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :INTO PREDICATE)
                (:S AGENT :O PATIENT :INTO PREDICATE :TO PREDICATE)))

(define-mixin-category manner_speaking-37.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-PP.TOPIC NP-V-NP NP-V-S-QUOTE
           NP-V-NP-PP.RECIPIENT NP-V-THAT-S NP-V-HOW-S_INF NP-V-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-HOW-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-PP.RECIPIENT-S-QUOTE WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :DEST_DIR RECIPIENT)
                (:S AGENT :ABOUT TOPIC) (:S AGENT :O TOPIC :DEST_DIR RECIPIENT)
                (:S AGENT :O TOPIC) (:S AGENT :FOR RECIPIENT :O TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT :O TOPIC)))

(define-mixin-category marry-36.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :O AGENT)))

(define-mixin-category marvel-31.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER) (:S EXPERIENCER :NIL STIMULUS)))

(define-mixin-category masquerade-29.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE WITH-AGENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O ATTRIBUTE)))

(define-mixin-category masquerade-29.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization ((:S AGENT :O ATTRIBUTE)))

(define-mixin-category masquerade-29.6-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization ((:S AGENT :O ATTRIBUTE) (:S AGENT :IN ATTRIBUTE)))

(define-mixin-category matter-91
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.EXPERIENCER IT-V-PP.EXPERIENCER-THAT-S IT-V-THAT-S
           THAT-S.STIMULUS-V WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S STIMULUS :TO EXPERIENCER) (:TO EXPERIENCER :O STIMULUS)
                (:O STIMULUS) (:S STIMULUS)))

(define-mixin-category meander-47.7
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION PP.LOCATION-V-NP THERE-V-PP-NP THERE-V-NP-PP
           HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization ((:S THEME :PATH LOCATION) (:PATH LOCATION :O THEME)
                (:O THEME :PATH LOCATION)))

(define-mixin-category meander-47.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V MEANDER-47.7)
  :realization ((:S THEME)))

(define-mixin-category meet-36.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT)))

(define-mixin-category meet-36.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization ((:S AGENT :WITH AGENT) (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category meet-36.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization ((:S AGENT :WITH AGENT) (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category mine-10.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category mix-22.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)))

(define-mixin-category mix-22.1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-NP-TOGETHER
           NP-V-PP.CO-PATIENT NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE
           NP-NP-V-ADVP-MIDDLE-TOGETHER MIX-22.1)
  :realization ((:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)
                (:S PATIENT (:M ADVERB) :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S PATIENT (:M ADVERB))))

(define-mixin-category mix-22.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-NP-V-TOGETHER MIX-22.1-1)
  :realization ((:S PATIENT)))

(define-mixin-category mix-22.1-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-TOGETHER
           NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE MIX-22.1)
  :realization ((:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S PATIENT (:M ADVERB) :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S PATIENT (:M ADVERB))))

(define-mixin-category mix-22.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT NP-V NP-V-TOGETHER MIX-22.1-2)
  :realization ((:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)
                (:S PATIENT)))

(define-mixin-category modes_of_being_with_motion-47.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP NP-V-NP.THEME
           WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:O THEME)
                (:LOC LOCATION :O THEME) (:S AGENT :O THEME)))

(define-mixin-category multiply-108
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category multiply-108-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization ((:S AGENT :O THEME :BY THEME)))

(define-mixin-category multiply-108-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization ((:S AGENT :O THEME :FROM THEME)))

(define-mixin-category multiply-108-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization ((:S AGENT :O THEME :OVER THEME)))

(define-mixin-category murder-42.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category murder-42.1-1
  :specializes subcategorization-pattern
  :mixins (NP.INSTRUMENT-V-NP WITH-INSTRUMENT MURDER-42.1)
  :binds ((SPARSER::INSTRUMENT PHYSICAL))
  :realization ((:S INSTRUMENT :O PATIENT)))

(define-mixin-category neglect-75.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category neglect-75.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NEGLECT-75.1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category nonvehicle-51.4.2
  :specializes subcategorization-pattern
  :mixins (NP.AGENT-V NP-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP.LOCATION WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :PATH PATH) (:S AGENT :O THEME :PATH PATH)
                (:S AGENT :O THEME) (:S AGENT :O PATH)))

(define-mixin-category nonvehicle-51.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NONVEHICLE-51.4.2)
  :realization ((:S THEME :O PATH)))

(define-mixin-category nonverbal_expression-40.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME NP-V-PP.RECIPIENT WITH-AGENT WITH-THEME
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT) (:S AGENT :O THEME) (:S AGENT :IN THEME)
                (:S AGENT :DEST_DIR RECIPIENT)))

(define-mixin-category obtain-13.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :FROM SOURCE)))

(define-mixin-category obtain-13.5.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP.ASSET-V-NP WITH-EXTENT OBTAIN-13.5.2)
  :binds ((SPARSER::EXTENT CURRENCY))
  :realization ((:S AGENT :O THEME :FOR EXTENT) (:S EXTENT :O THEME)))

(define-mixin-category occur-48.3
  :specializes subcategorization-pattern
  :mixins (NP-V THERE-V-NP NP-V-PP WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization ((:S THEME) (:O THEME) (:S THEME :|| LOCATION)))

(define-mixin-category occur-48.3-1
  :specializes subcategorization-pattern
  :mixins (IT-V-THAT-S OCCUR-48.3)
  :realization ((:O THEME)))

(define-mixin-category occur-48.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-ADV OCCUR-48.3)
  :realization ((:S THEME)))

(define-mixin-category orbit-51.9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S THEME :PATH INSTRUMENT)))

(define-mixin-category order-58.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RESULT-ROLE)))

(define-mixin-category order-58.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING ORDER-58.3)
  :realization ((:S AGENT :IO PATIENT :OC RESULT-ROLE)))

(define-mixin-category orphan-29.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category other_cos-45.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S PATIENT) (:S PATIENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT)))

(define-mixin-category other_cos-45.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ OTHER_COS-45.4)
  :realization ((:S PATIENT :O RESULT-ROLE)))

(define-mixin-category overstate-37.12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category own-100.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category pain-40.8.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.EXPERIENCER NP-V-PP.STIMULUS WITH-EXPERIENCER
           WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S PATIENT) (:S PATIENT :O EXPERIENCER)
                (:S PATIENT :FROM STIMULUS)))

(define-mixin-category patent-101
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category pay-68
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-EXTENT WITH-THEME)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O EXTENT :FOR THEME) (:S AGENT :O EXTENT)))

(define-mixin-category pay-68-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP-PP.THEME NP-V-NP-NP WITH-RECIPIENT PAY-68)
  :realization ((:S AGENT :IO RECIPIENT :OC EXTENT :FOR THEME)
                (:S AGENT :IO RECIPIENT :OC EXTENT)))

(define-mixin-category peer-30.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :SPATIAL THEME)))

(define-mixin-category pelt-17.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL))
  :realization ((:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)))

(define-mixin-category performance-26.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.BENEFICIARY WITH-AGENT WITH-THEME
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT)
                (:S AGENT :O THEME :FOR BENEFICIARY)))

(define-mixin-category performance-26.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP PERFORMANCE-26.7)
  :realization ((:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category pit-10.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O SOURCE)))

(define-mixin-category play-114.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :WITH AGENT) (:S AGENT)))

(define-mixin-category play-114.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-NP-PP.CO-AGENT NP-V-NP WITH-THEME PLAY-114.2)
  :realization ((:S AGENT :WITH THEME) (:S AGENT :O AGENT)
                (:S AGENT :O THEME :WITH AGENT) (:S AGENT :O THEME)))

(define-mixin-category pocket-9.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL) (SPARSER::AGENT (:OR NIL COMPANY)))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :IN DESTINATION :ON DESTINATION :UNDER
                 DESTINATION)))

(define-mixin-category pocket-9.10-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V NP-V-ADVP POCKET-9.10)
  :realization ((:S THEME :IN DESTINATION :ON DESTINATION :UNDER DESTINATION)
                (:S THEME) (:S THEME :O DESTINATION)))

(define-mixin-category poison-42.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT NP-V-NP-PP.INSTRUMENT
           WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category poke-19
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.PATIENT NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP
           NP.INSTRUMENT-V-NP WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O INSTRUMENT :THROUGH PATIENT :INTO PATIENT)
                (:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S INSTRUMENT :O PATIENT)))

(define-mixin-category pour-9.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP NP-V-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION WITH-SOURCE)
  :binds ((SPARSER::SOURCE (:AND/OR LOCATION REGION))
          (SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME (:OR NIL PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :PATH DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :DEST_CONF DESTINATION)
                (:S THEME :SRC SOURCE :DEST_CONF DESTINATION)))

(define-mixin-category preparing-26.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT))))

(define-mixin-category preparing-26.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PRODUCT
           PREPARING-26.3)
  :binds ((SPARSER::PRODUCT PHYSICAL))
  :realization ((:S AGENT :O PRODUCT) (:S AGENT :IO BENEFICIARY :OC PRODUCT)
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)))

(define-mixin-category preparing-26.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PATIENT
           PREPARING-26.3)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :IO BENEFICIARY :OC PATIENT)
                (:S AGENT :O PATIENT :FOR BENEFICIARY)))

(define-mixin-category price-54.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::PATH CURRENCY) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :AT PATH)))

(define-mixin-category promise-37.13
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-THAT-S NP-V-S_ING NP-V-PP.RECIPIENT-THAT-S
           NP-V-THAT-S WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category promote-102
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category pronounce-29.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME :WITH ATTRIBUTE :IN ATTRIBUTE)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category prosecute-33.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-PATIENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR NIL COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :FOR THEME)))

(define-mixin-category prosecute-33.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.THEME-PP.ATTRIBUTE
           NP-V-NP-PP.ATTRIBUTE-PP.THEME WITH-ATTRIBUTE PROSECUTE-33.2)
  :realization ((:S AGENT :O PATIENT :AS ATTRIBUTE)
                (:S AGENT :O PATIENT :AS ATTRIBUTE :FOR PATIENT)))

(define-mixin-category push-12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category push-12-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP-RESULT NP-V-PP-CONATIVE PUSH-12)
  :realization ((:S AGENT :IO THEME :OC RESULT-ROLE)
                (:S AGENT :AT THEME :AGAINST THEME :ON THEME)))

(define-mixin-category push-12-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP.TRAJECTORY PUSH-12-1)
  :realization ((:S AGENT) (:S AGENT :DIR PATH)))

(define-mixin-category put-9.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :LOC DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)))

(define-mixin-category put-9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP PUT-9.1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category put-9.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION-NP WITH-THEME PUT-9.1)
  :binds ((SPARSER::THEME ABSTRACT))
  :realization ((:S AGENT :ON DESTINATION :UPON DESTINATION :O THEME)))

(define-mixin-category put_direction-9.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SPATIAL DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)))

(define-mixin-category put_spatial-9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :LOC DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)))

(define-mixin-category put_spatial-9.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-ADVP PUT_SPATIAL-9.2)
  :realization ((:S THEME :LOC DESTINATION) (:S THEME :O DESTINATION)))

(define-mixin-category reach-51.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COMPANY)))
  :realization ((:S THEME :O GOAL)))

(define-mixin-category rear-26.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PRODUCT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category rear-26.2.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.MATERIAL-PP.PRODUCT WITH-MATERIAL REAR-26.2.2)
  :binds ((SPARSER::MATERIAL PHYSICAL))
  :realization ((:S AGENT :IO MATERIAL :OC PRODUCT)))

(define-mixin-category reciprocate-112
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME) (:S AGENT :IO THEME :OC PREDICATE)))

(define-mixin-category reciprocate-112-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP RECIPROCATE-112)
  :realization ((:S AGENT) (:S AGENT :O PREDICATE)))

(define-mixin-category reflexive_appearance-48.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP WITH-THEME WITH-AGENT WITH-RECIPIENT
           REFLEXIVE)
  :binds ((SPARSER::PRONOUN PRONOUN) (SPARSER::RECIPIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :TO RECIPIENT)
                (:S THEME :O PRONOUN)))

(define-mixin-category refrain-69
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :FROM THEME)))

(define-mixin-category register-54.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.VALUE WITH-THEME WITH-PATH)
  :realization ((:S THEME :AT PATH :|\|| PATH :TO PATH)))

(define-mixin-category register-54.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-ATTRIBUTE REGISTER-54.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :AT PATH)
                (:S AGENT :O ATTRIBUTE :AT PATH)))

(define-mixin-category register-54.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE REGISTER-54.1-1)
  :realization ((:S THEME :O PATH)))

(define-mixin-category rehearse-26.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category rehearse-26.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V REHEARSE-26.8)
  :realization ((:S AGENT)))

(define-mixin-category reject-77.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category reject-77.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-WHAT-S REJECT-77.2)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category relate-86.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME))

(define-mixin-category relate-86.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RELATE-86.2)
  :realization ((:S THEME :O THEME)))

(define-mixin-category relate-86.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME RELATE-86.2)
  :realization ((:S THEME :TO THEME)))

(define-mixin-category rely-70
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-NP-S_ING NP-V-PP.THEME-S_INF NP-V-PP.THEME-S_ING
           NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :ON THEME)))

(define-mixin-category remedy-45.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category remedy-45.7-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE REMEDY-45.7)
  :realization ((:S PATIENT (:M ADVERB))))

(define-mixin-category remove-10.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-GOAL)
  :binds ((SPARSER::GOAL LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::AGENT (:OR NIL COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category render-29.90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP NP-V-ADJP-NP WITH-CAUSE WITH-PATIENT WITH-RESULT)
  :realization ((:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S CAUSE :IO RESULT-ROLE :OC PATIENT)))

(define-mixin-category render-29.90-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S RENDER-29.90)
  :realization ((:S AGENT :IO PATIENT :OC RESULT-ROLE)))

(define-mixin-category render-29.90-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S-INF RENDER-29.90)
  :realization ((:S AGENT :IO PATIENT :OC RESULT-ROLE)))

(define-mixin-category representation-110.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MANNER WITH-THEME WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization ((:S THEME :O THEME)
                (:S THEME :O THEME :IN PREDICATE :|\|| PREDICATE :FOR PREDICATE
                 :|\|| PREDICATE :TO PREDICATE)))

(define-mixin-category require-103
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-FOR-NP-S_INF NP-V-THAT-S WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category require-103-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-S_INF NP-V-S_ING WITH-SOURCE REQUIRE-103)
  :realization ((:S INSTRUMENT :O THEME :FROM SOURCE) (:S INSTRUMENT :O THEME)))

(define-mixin-category require-103-2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING REQUIRE-103)
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category resign-10.11
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT)))

(define-mixin-category resign-10.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE RESIGN-10.11)
  :realization ((:S AGENT :FROM SOURCE)))

(define-mixin-category resign-10.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RESIGN-10.11-1)
  :realization ((:S AGENT :O SOURCE)))

(define-mixin-category respond-113
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.PREDICATE NP-V-PP.THEME-PP.PREDICATE
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT) (:S AGENT :|TO\|AGAINST| THEME)
                (:S AGENT :WITH PREDICATE)
                (:S AGENT :|TO\|AGAINST| THEME :WITH PREDICATE)))

(define-mixin-category result-27.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::CAUSE PHYSICAL-AGENT))
  :realization ((:S CAUSE :IN THEME :|\|| THEME :TO THEME)))

(define-mixin-category risk-94
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category risk-94-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING RISK-94)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category rob-10.6.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)))

(define-mixin-category roll-51.3.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.LOCATION NP-V-NP.THEME NP-V-NP-PP.LOCATION
           NP-V-ADJ NP-V-PP.RESULT NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT
           WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME) (:S THEME :SPATIAL PATH) (:S AGENT :O THEME)
                (:S AGENT :O THEME :PATH PATH) (:S THEME :O RESULT-ROLE)
                (:S THEME :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :IO THEME :OC RESULT-ROLE)
                (:S AGENT :O THEME :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category rotate-51.9.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.EXTENT NP-V-ADV-MIDDLE WITH-THEME WITH-EXTENT
           WITH-PATH)
  :realization ((:S THEME :O EXTENT) (:S THEME (:M ADVERB))))

(define-mixin-category rotate-51.9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP WITH-AGENT ROTATE-51.9.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :IO THEME :OC EXTENT)))

(define-mixin-category rummage-35.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.LOCATION-PP.THEME WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :OVER LOCATION :THROUGH LOCATION :INTO LOCATION)
                (:S AGENT :LOC LOCATION :FOR THEME)))

(define-mixin-category rummage-35.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME RUMMAGE-35.5)
  :realization ((:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category run-51.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP THERE-V-NP-PP PP.LOCATION-V-NP
           WITH-THEME WITH-SOURCE WITH-PATH WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::PATH PHYSICAL)
          (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S THEME) (:S THEME :SPATIAL PATH) (:O THEME :PATH SOURCE)
                (:PATH SOURCE :O THEME)))

(define-mixin-category run-51.3.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RUN-51.3.2)
  :realization ((:S THEME :O PATH)))

(define-mixin-category run-51.3.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP NP-V-NP-PP.RESULT WITH-AGENT WITH-RESULT
           WITH-SOURCE RUN-51.3.2)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :SPATIAL PATH) (:S AGENT :O THEME)
                (:S AGENT :O THEME :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category run-51.3.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RUN-51.3.2-2)
  :realization ((:S THEME :O PATH)))

(define-mixin-category rush-53.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :WITH THEME) (:S AGENT :O THEME)
                (:S AGENT :THROUGH THEME)))

(define-mixin-category satisfy-55.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S INSTRUMENT :O THEME) (:S AGENT :O THEME :WITH INSTRUMENT)))

(define-mixin-category say-37.7
  :specializes subcategorization-pattern
  :mixins (NP-V-S-QUOTE WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O TOPIC)))

(define-mixin-category say-37.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.TOPIC NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-S-QUOTE
           NP-V-HOW-S NP-V-HOW-S_INF NP-V-WHAT-S_INF NP-V-WHAT-S SAY-37.7)
  :realization ((:S AGENT :O TOPIC :TO RECIPIENT)
                (:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category say-37.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S SAY-37.7-1)
  :realization ((:S AGENT :O TOPIC)))

(define-mixin-category say-37.7-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1-1)
  :realization ((:S AGENT :O TOPIC :TO RECIPIENT)
                (:S AGENT :TO RECIPIENT :O TOPIC)))

(define-mixin-category say-37.7-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1)
  :realization ((:S AGENT :O TOPIC :TO RECIPIENT)
                (:S AGENT :TO RECIPIENT :O TOPIC)))

(define-mixin-category scribble-25.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :ON DESTINATION :|\|| DESTINATION :IN
                 DESTINATION)))

(define-mixin-category scribble-25.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V SCRIBBLE-25.2)
  :realization ((:S AGENT)))

(define-mixin-category search-35.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-NP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :LOC LOCATION :FOR THEME) (:S AGENT :LOC LOCATION)))

(define-mixin-category see-30.1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ATTR-POS NP-V-HOW-S NP-V-WHAT-S SEE-30.1)
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S NP-V-S_ING SEE-30.1-1)
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS SEE-30.1-1-1)
  :realization ((:S EXPERIENCER :ABOUT STIMULUS :OF STIMULUS)))

(define-mixin-category seem-109
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ WITH-THEME WITH-ATTRIBUTE)
  :realization ((:S THEME :O ATTRIBUTE)))

(define-mixin-category seem-109-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SEEM-109)
  :realization ((:S THEME :O ATTRIBUTE)))

(define-mixin-category seem-109-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE SEEM-109-1)
  :realization ((:S THEME :IN ATTRIBUTE)))

(define-mixin-category seem-109-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF SEEM-109-1-1)
  :realization ((:S THEME :O ATTRIBUTE)))

(define-mixin-category send-11.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)))

(define-mixin-category send-11.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SEND-11.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization ((:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category separate-23.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V NP-V-ADVP-MIDDLE-PP
           NP-V-ADVP-MIDDLE WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT :FROM CO-PATIENT) (:S AGENT :O PATIENT)
                (:S PATIENT) (:S PATIENT (:M ADVERB) :FROM CO-PATIENT)
                (:S PATIENT (:M ADVERB))))

(define-mixin-category separate-23.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization ((:S PATIENT :FROM CO-PATIENT)))

(define-mixin-category separate-23.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization ((:S PATIENT :WITH CO-PATIENT)))

(define-mixin-category settle-36.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.GOAL-WHAT-S_INF NP-V-PP.CO-AGENT-PP.GOAL WITH-AGENT
           WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :ON GOAL) (:S AGENT :WITH AGENT :ON GOAL)))

(define-mixin-category settle-36.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-PP-THAT-S NP-V-S SETTLE-36.1.2)
  :realization ((:S AGENT :IO AGENT :OC GOAL) (:S AGENT :O GOAL)))

(define-mixin-category shake-22.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE NP-V-TOGETHER-ADV-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S PATIENT (:M ADVERB))))

(define-mixin-category shake-22.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP-TOGETHER SHAKE-22.3)
  :realization ((:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category shake-22.3-1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-PP-ADV-MIDDLE NP-V-NP SHAKE-22.3-1)
  :realization ((:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT
                 (:M ADVERB))
                (:S AGENT :O PATIENT)))

(define-mixin-category shake-22.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-NP-TOGETHER SHAKE-22.3)
  :realization ((:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category shake-22.3-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SHAKE-22.3-2)
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category sight-30.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category simple_dressing-41.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category slide-11.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOCATION NP-V-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION NP.AGENT-V-NP
           NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME) (:S THEME :PATH SOURCE) (:S THEME :TO DESTINATION)
                (:S THEME :SRC SOURCE :TO DESTINATION) (:S AGENT :O THEME)
                (:S AGENT :O THEME :PATH PATH)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)))

(define-mixin-category slide-11.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SLIDE-11.2)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization ((:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category smell_emission-43.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP.LOCATION-V NP-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME) (:S LOCATION) (:S LOCATION :OF THEME)))

(define-mixin-category snooze-40.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT)))

(define-mixin-category snooze-40.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME SNOOZE-40.4)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category sound_emission-43.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME PP.LOCATION-V-NP
           THERE-V-NP-PP NP-V-NP.THEME NP-V-NP WITH-THEME HAS-LOCATION
           WITH-AGENT TEMPORALLY-LOCALIZED)
  :binds ((SPARSER::CERTAINTY CERTAINTY)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:S LOCATION :WITH THEME)
                (:LOC LOCATION :O THEME) (:O THEME :LOC LOCATION)
                (:S AGENT :O THEME) (:S THEME :O RESULT-ROLE)))

(define-mixin-category sound_existence-47.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP
           NP.LOCATION-V-NP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:O THEME)
                (:LOC LOCATION :O THEME) (:S LOCATION :WITH THEME)))

(define-mixin-category spank-18.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT NP-V-NP-ADJP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION
           NP-V-NP-PP-PP.INSTRUMENT NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT PHYSICAL)
          (SPARSER::PATIENT PHYSICAL))
  :realization ((:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)
                (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :LOC LOCATION :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category spatial_configuration-47.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP PP.LOCATION-V-NP WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization ((:S THEME) (:S THEME :LOC LOCATION) (:LOC LOCATION :O THEME)))

(define-mixin-category spatial_configuration-47.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP WITH-AGENT SPATIAL_CONFIGURATION-47.6)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category spend_time-104
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-EXTENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O EXTENT) (:S AGENT :IO EXTENT :OC ATTRIBUTE)))

(define-mixin-category split-23.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP-APART NP-V-PP.CO-PATIENT
           NP-V-APART NP-V-PP-ADV-MIDDLE NP-V-ADV-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID))
  :realization ((:S AGENT :O PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF
                 CO-PATIENT :FROM CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT)
                (:S PATIENT)
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB))))

(define-mixin-category spray-9.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME NP-V-NP.THEME
           NP-V-NP.DESTINATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O THEME)
                (:S AGENT :O DESTINATION)))

(define-mixin-category spray-9.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-NP-PP.DESTINATION-CONATIVE WITH-THEME
           SPRAY-9.7)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL COLLECTION)))
  :realization ((:S THEME :LOC DESTINATION :DIR DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)))

(define-mixin-category spray-9.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP SPRAY-9.7-1)
  :realization ((:S THEME :O DESTINATION)))

(define-mixin-category spray-9.7-2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME SPRAY-9.7)
  :binds ((SPARSER::THEME PHYSICAL)))

(define-mixin-category stalk-35.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O LOCATION :FOR THEME)
                (:S AGENT :O THEME :LOC LOCATION) (:S AGENT :O THEME)))

(define-mixin-category steal-10.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)))

(define-mixin-category steal-10.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP STEAL-10.5)
  :realization ((:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category stimulate-59.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :INTO PREDICATE)))

(define-mixin-category stimulus_subject-30.4
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ NP-V-ADJ-PP.EXPERIENCER NP-V-PP.ATTRIBUTE WITH-EXPERIENCER
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S STIMULUS :TO EXPERIENCER) (:S STIMULUS)))

(define-mixin-category stop-55.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category stop-55.4-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP.THEME-V NP-V-ADJ-MIDDLE STOP-55.4)
  :realization ((:S THEME) (:S THEME (:M ADVERB))))

(define-mixin-category stop-55.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING STOP-55.4-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category subjugate-42.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category subordinate-95.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :TO AGENT)))

(define-mixin-category substance_emission-43.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-SOURCE)
  :realization ((:S SOURCE :O THEME)))

(define-mixin-category substance_emission-43.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP.THEME-V-PP.SOURCE NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME
           PP.LOCATION-V-NP THERE-V-NP-PP NP-V-OUT NP-V-NP HAS-LOCATION
           SUBSTANCE_EMISSION-43.4)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization ((:S SOURCE) (:S THEME :FROM SOURCE :OUT_OF SOURCE)
                (:S THEME :PATH LOCATION) (:S LOCATION :WITH THEME)
                (:LOC LOCATION :O THEME) (:O THEME :LOC LOCATION) (:S THEME)
                (:S SOURCE :O THEME)))

(define-mixin-category substance_emission-43.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.SOURCE WITH-AGENT SUBSTANCE_EMISSION-43.4-1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O SOURCE)))

(define-mixin-category substitute-13.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-NP.LOCATION NP-V-NP-PP.CO-THEME WITH-THEME
           WITH-THEME WITH-SOURCE WITH-GOAL HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization ((:S THEME :FOR THEME :INTO THEME) (:S THEME :O LOCATION)
                (:S THEME :O LOCATION :WITH THEME)))

(define-mixin-category substitute-13.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SUBSTITUTE-13.6.2)
  :realization ((:S THEME :O THEME)))

(define-mixin-category succeed-74
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))))

(define-mixin-category succeed-74-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME SUCCEED-74)
  :realization ((:S AGENT) (:S AGENT :IN THEME)))

(define-mixin-category succeed-74-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF SUCCEED-74-1)
  :realization ((:S AGENT :O THEME)))

(define-mixin-category succeed-74-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74)
  :realization ((:S AGENT) (:S AGENT :O THEME) (:S AGENT :IN THEME :AT THEME)))

(define-mixin-category succeed-74-3
  :specializes subcategorization-pattern
  :mixins (NP-V SUCCEED-74)
  :realization ((:S AGENT)))

(define-mixin-category succeed-74-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74-3)
  :realization ((:S AGENT :O THEME) (:S AGENT :IN THEME :AT THEME)))

(define-mixin-category succeed-74-3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-S_ING NP-V-S_INF SUCCEED-74-3-1)
  :realization ((:S AGENT :IN THEME) (:S AGENT :O THEME)))

(define-mixin-category suffocate-40.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP.THEME-V NP-V-PP.RESULT NP-V-NP-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S PATIENT) (:S PATIENT :TO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE)))

(define-mixin-category supervision-95.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O AGENT)))

(define-mixin-category support-15.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category support-15.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT SUPPORT-15.3)
  :realization ((:S AGENT :O THEME :WITH INSTRUMENT :|\|| INSTRUMENT :THROUGH
                 INSTRUMENT)))

(define-mixin-category suspect-81
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-PP.ATTRIBUTE-S_ING NP-V-PP.THEME-S_ING
           WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :OF ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category sustain-55.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME :THROUGH INSTRUMENT)))

(define-mixin-category sustain-55.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-ATTRIBUTE SUSTAIN-55.6)
  :realization ((:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category swarm-47.5.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME (:AND/OR PHYSICAL COLLECTION))))

(define-mixin-category swarm-47.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP PP.LOCATION-V-NP
           PP.LOCATION-V-PP.THEME SWARM-47.5.1)
  :realization ((:S THEME :LOC LOCATION) (:O THEME :LOC LOCATION)
                (:LOC LOCATION :O THEME) (:S LOCATION :WITH THEME)))

(define-mixin-category swarm-47.5.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP SWARM-47.5.1)
  :realization ((:S THEME :LOC LOCATION) (:O THEME :LOC LOCATION)))

(define-mixin-category swarm-47.5.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-PP.THEME SWARM-47.5.1-2)
  :realization ((:S LOCATION :WITH THEME)))

(define-mixin-category swat-18.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP NP-V-NP-ADJP
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT SOLID)
          (SPARSER::PATIENT PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE)
                (:S AGENT :IO PATIENT :OC RESULT-ROLE :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :TO RESULT-ROLE :INTO RESULT-ROLE :WITH
                 INSTRUMENT)
                (:S AGENT :O PATIENT :LOC LOCATION)))

(define-mixin-category talk-37.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V NP-V-TOGETHER
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :TO AGENT) (:S AGENT :WITH AGENT)
                (:S AGENT :TO AGENT :ABOUT TOPIC)
                (:S AGENT :WITH AGENT :ABOUT TOPIC) (:S AGENT)
                (:S AGENT :ABOUT TOPIC :TO AGENT)
                (:S AGENT :ABOUT TOPIC :WITH AGENT) (:S AGENT :ABOUT TOPIC)))

(define-mixin-category tape-22.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT NP-V-NP-TOGETHER
           NP-V-ADV-MIDDLE-PP NP-V-ADV-MIDDLE NP-V-ADV-MIDDLE-TOGETHER
           NP-V-TOGETHER-ADV-MIDDLE NP-V-NP-ADJP WITH-AGENT WITH-PATIENT
           WITH-CO-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S PATIENT (:M ADVERB) :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)
                (:S PATIENT (:M ADVERB)) (:S AGENT :IO PATIENT :OC RESULT-ROLE)))

(define-mixin-category tape-22.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT TAPE-22.4)
  :realization ((:S PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO CO-PATIENT)))

(define-mixin-category tell-37.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-PP.TOPIC NP-V-NP.RECIPIENT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :O RECIPIENT :OF TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category terminus-47.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization ((:S THEME :|| LOCATION)))

(define-mixin-category throw-17.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.DESTINATIONS
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-RESULT)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :DEST DESTINATION :LOC DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :DEST_DIR DESTINATION)
                (:S AGENT :O THEME (:M ADVERB))))

(define-mixin-category throw-17.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION THROW-17.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization ((:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category throw-17.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT NP-V-PP.RESULT-NP WITH-CAUSE THROW-17.1-1)
  :realization ((:S CAUSE :O THEME :INTO RESULT-ROLE)
                (:S CAUSE :INTO RESULT-ROLE :O THEME)))

(define-mixin-category tingle-40.8.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization ((:S PATIENT) (:S PATIENT :FROM STIMULUS :AT STIMULUS)))

(define-mixin-category touch-20
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-EXPERIENCER
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::EXPERIENCER PHYSICAL))
  :realization ((:S AGENT :O EXPERIENCER)
                (:S AGENT :O EXPERIENCER :WITH INSTRUMENT)))

(define-mixin-category touch-20-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-EXPERIENCER TOUCH-20)
  :binds ((SPARSER::EXPERIENCER (:OR NIL PRONOUN)))
  :realization ((:S AGENT :O EXPERIENCER)
                (:S AGENT :O EXPERIENCER :WITH INSTRUMENT)))

(define-mixin-category transcribe-25.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O THEME)
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)))

(define-mixin-category transfer_mesg-37.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-WHAT-S NP-V-WHAT-S_INF NP-V-NP
           NP-V-NP-PP.RECIPIENT NP-V-PP.SOURCE NP-V WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT WITH-SOURCE)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :FROM SOURCE)
                (:S AGENT)))

(define-mixin-category transfer_mesg-37.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP TRANSFER_MESG-37.1.1)
  :realization ((:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category transfer_mesg-37.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-S_INF NP-V-NP-S_ING NP-V-NP-S
           NP-V-NP-WHAT-S NP-V-NP-WHAT-S_INF NP-V-NP-HOW-S
           TRANSFER_MESG-37.1.1-1)
  :realization ((:S AGENT :O RECIPIENT) (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category trick-59.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :INTO PREDICATE)
                (:S AGENT :O PATIENT :INTO RESULT-ROLE)))

(define-mixin-category trifle-105.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :WITH THEME)))

(define-mixin-category try-61.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP NP-V-S_INF WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME)))

(define-mixin-category turn-26.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.MATERIAL-PP.RESULT
           NP.PATIENT-V-PP.MATERIAL-PP.RESULT NP-V-NP.PATIENT-PP.RESULT
           NP.PATIENT-V-PP.RESULT NP-V NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-RESULT WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O PATIENT :FROM SOURCE :INTO RESULT-ROLE)
                (:S PATIENT :FROM SOURCE :INTO RESULT-ROLE)
                (:S AGENT :O PATIENT :INTO RESULT-ROLE)
                (:S PATIENT :INTO RESULT-ROLE) (:S PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category turn-26.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT NP-V-PP.MATERIAL-PP.RESULT
           NP-V-PP.RESULT--PP.MATERIAL TURN-26.6.1)
  :realization ((:S AGENT :TO RESULT-ROLE)
                (:S AGENT :FROM SOURCE :TO RESULT-ROLE)
                (:S AGENT :TO RESULT-ROLE :FROM SOURCE)))

(define-mixin-category urge-58.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category urge-58.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING URGE-58.1)
  :realization ((:S AGENT :IO PATIENT :OC RESULT-ROLE)))

(define-mixin-category urge-58.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-THAT-S URGE-58.1-1)
  :realization ((:S AGENT :IO PATIENT :OC TOPIC)))

(define-mixin-category use-105.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-ADV NP-V-NP-PP.PREDICATE NP-V-NP-S_INF
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME (:M ADVERB))
                (:S AGENT :O THEME :FOR PREDICATE)
                (:S AGENT :IO THEME :OC PREDICATE)))

(define-mixin-category vehicle-51.4.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP.THEME-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT WITH-THEME WITH-PATH
           WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S THEME) (:S THEME :PATH PATH) (:S AGENT :O THEME :PATH PATH)
                (:S AGENT :O THEME) (:S AGENT :IO THEME :OC RESULT-ROLE)
                (:S AGENT :O THEME :TO RESULT-ROLE :INTO RESULT-ROLE)))

(define-mixin-category vehicle-51.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HAS-LOCATION VEHICLE-51.4.1)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization ((:S THEME :O LOCATION)))

(define-mixin-category vehicle_path-51.4.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           WITH-AGENT WITH-THEME WITH-PATH WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME MOTOR-VEHICLE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization ((:S AGENT :O THEME) (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O PATH)
                (:S AGENT :O PATH :TO DESTINATION)
                (:S AGENT :O PATH :FROM SOURCE)))

(define-mixin-category void-106
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT :O PATIENT)))

(define-mixin-category volunteer-95.4
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-PP NP-V-NP-PP WITH-AGENT WITH-INSTRUMENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization ((:S AGENT :O THEME) (:S AGENT :IO INSTRUMENT :OC THEME)))

(define-mixin-category volunteer-95.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP VOLUNTEER-95.4)
  :realization ((:S AGENT :O ATTRIBUTE)))

(define-mixin-category waltz-51.5
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.TRAJECTORY-PP.GOAL NP-V-NP-PP.TRAJECTORY
           NP-V-NP-ADJP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-PATH
           WITH-GOAL)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S THEME) (:S THEME :PATH PATH :O GOAL)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :IO THEME :OC GOAL)
                (:S AGENT :O THEME :TO GOAL :INTO GOAL)))

(define-mixin-category want-32.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT PHYSICAL-AGENT))
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category want-32.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP-ADV NP-V-S_ING NP-V-NP-ADJ NP-V-NP-S_ING
           NP-V-S_INF WANT-32.1)
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category want-32.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-NP-TO-BE-ADJ WANT-32.1-1)
  :realization ((:S INSTRUMENT :O THEME)))

(define-mixin-category weather-57
  :specializes subcategorization-pattern
  :mixins (IT-V IT-V-NP.THEME IT-V-PP.THEME WITH-THEME)
  :binds ((SPARSER::THEME (:OR PHYSICAL NIL)))
  :realization (NIL (:O THEME) (:WITH THEME)))

(define-mixin-category weekend-56
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization ((:S THEME :LOC LOCATION)))

(define-mixin-category wink-40.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V NP-V-PP.RECIPIENT NP-V-PP.THEME NP-V-NP
           WITH-AGENT WITH-PATIENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::THEME SPEECH-ACT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization ((:S AGENT :O PATIENT) (:S AGENT :O PATIENT :IN THEME)
                (:S AGENT) (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT :IN THEME)
                (:S AGENT :O THEME)))

(define-mixin-category wipe_instr-10.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INITIAL_LOCATION NP-V-NP.INITIAL_LOCATION NP-V
           NP-V-NP-ADJP-RESULT WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization ((:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O SOURCE) (:S AGENT)
                (:S AGENT :IO SOURCE :OC RESULT-ROLE)))

(define-mixin-category wipe_instr-10.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION WITH-DESTINATION WIPE_INSTR-10.4.2)
  :realization ((:S AGENT :O THEME :DEST_CONF DESTINATION)))

(define-mixin-category wipe_manner-10.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP.SOURCE NP-V-NP.THEME WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT)))
  :realization ((:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O SOURCE)
                (:S AGENT :O THEME)))

(define-mixin-category wipe_manner-10.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP-CONATIVE WITH-SOURCE WIPE_MANNER-10.4.1)
  :binds ((SPARSER::SOURCE REGION))
  :realization ((:S AGENT :O SOURCE)))

(define-mixin-category wish-62
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP NP-V-NP-TO-BE-ADJ NP-V-NP-ADJ NP-V-THAT-S
           NP-V-S_INF WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S EXPERIENCER :O STIMULUS)))

(define-mixin-category withdraw-82
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-SOURCE)
  :binds ((SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY))))

(define-mixin-category withdraw-82-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE NP-V-PP.SOURCE-S_ING WITHDRAW-82)
  :realization ((:S AGENT) (:S AGENT :OF SOURCE)))

(define-mixin-category withdraw-82-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE NP-V-PP.SOURCE-S_ING WITHDRAW-82)
  :realization ((:S AGENT) (:S AGENT :FROM SOURCE)))

(define-mixin-category withdraw-82-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE WITHDRAW-82)
  :realization ((:S AGENT) (:S AGENT :FROM SOURCE)))

(define-mixin-category work-73.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization ((:S AGENT) (:S AGENT :ON THEME)
                (:S AGENT :WITH AGENT :ON THEME) (:S AGENT :AT THEME)
                (:S AGENT :WITH AGENT :AT THEME)))
