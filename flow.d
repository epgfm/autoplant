@startuml
start
:Site mission locale;
:Nos Services;
:Orientation Mobilité;
if (Pass Permis) then
    :later;
elseif (Mobilité) then
    :Où allez vous?;
elseif (Escape) then
    :Orientation Mobilité;
endif
stop
@enduml