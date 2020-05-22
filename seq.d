@startuml
actor Alice #blue
actor Bob #red
skinparam roundcorner 10
activate Alice

Alice -> Bob : hello world
Bob -> Bob ++ : self call
Bob -> bib ++  #FF0000 : "<font color=blue><b>hello"
    alt is dumb
        Bob -> george ** : create
        return done
    else else
        return rc
    end
Bob -> george !! : delete
return success
@enduml
