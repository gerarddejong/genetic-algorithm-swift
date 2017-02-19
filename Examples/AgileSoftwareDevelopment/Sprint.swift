class UserStory {
    var estimate: Int
    var priority: Int
}

class Plan : Solution {
    var sprintLength: Int
    var stories: [UserStory] = []
}
