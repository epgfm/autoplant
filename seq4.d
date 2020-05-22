@startuml
actor Alice #blue
participant "A-Private"
participant "A-Public"
actor Bob #green

Alice -> Alice :
note left: "hMsg = h(message)"
Alice -> "A-Private" : "hMsg"
Alice <-- "A-Private" : "crypt(hMsg)"

Alice -> Bob : "message"
Alice -> Bob : "crypt(hMsg)"

Bob -> "A-Public": "crypt(hMsg)"
Bob <-- "A-Public": "hMsg"

Bob -> Bob :
note right: "localhMsg = h(message)"

alt hMsg == localhMsg
    Alice <- Bob: "Nice to hear from you A!"
else
    Alice <- Bob: "Who the fuck are you?"
end

@enduml
