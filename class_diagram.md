```mermaid
classDiagram
  class Hole
  Hole : +Integer number
  Hole : +Integer yardage
  Hole : +Integer par
  Hole : +Integer handicap
  Hole : -Integer tee_id

  class Course
  Course : +String name
  Course : +String url

  class Tee
  Tee : +String color
  Tee : +String difficulty
  Tee : +Integer total_yardage
  Tee : +Integer course_id

  class Round
  Round : +Date played_on
  Round : -Integer tee_id

  class ScoreEntry
  ScoreEntry : +Integer strokes
  ScoreEntry : +Integer number_of_putts
  ScoreEntry : +Boolean green_in_regulation
  ScoreEntry : +Boolean fairway_hit
  ScoreEntry : -Integer hole_id
  ScoreEntry : -Integer round_id

  Course "1" --> "*" Tee
  Tee "1" --> "*" Hole
  Hole "1" --> "*" ScoreEntry
  Round "1" --> "*" ScoreEntry
  Tee "1" --> "*" Round
```
