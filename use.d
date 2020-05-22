@startuml
left to right direction
skinparam packageStyle rectangle
actor visitor
actor admin
rectangle ArsTechnica {
  visitor -- (Check Article List)
  (React to Comment) .> (Read Article) : extends
  (Login) <. (React to Comment) : include
  visitor -- (Read Article)
  (Read Article) <. (Post Comment) : extends
  (Post Comment) .> (Login) : include
  (Publish Article) -- admin
  (Publish Article) .> (Login) : include
}
@enduml
