@startuml
actor Etienne #blue
actor Soumia #red
skinparam roundcorner 10
activate Etienne

Etienne -> Soumia : Can I have some money for X?
alt is dumb
    return done
else else
    return rc
end
Soumia -> Maud  #FF0000 : "<font color=blue><b>hello"

@enduml
