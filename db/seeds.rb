User.create(username: "alex", password: "yolo")
User.create(username: "sahan", password: "yolo")
User.create(username: "nirav", password: "yolo")
User.create(username: "neal", password: "yolo")
User.create(username: "mario", password: "yolo")

Survey.create(title: "Alex's Survey", user_id: 1)
Survey.create(title: "Sahan's Survey", user_id: 2)
Survey.create(title: "Nirav's Survey", user_id: 3)
Survey.create(title: "Neal's Survey", user_id: 4)
Survey.create(title: "Mario's Survey", user_id: 5)

Question.create(question: "What is your favorite food?", survey_id: 1)
Question.create(question: "What is your favorite drink?", survey_id: 1)
Question.create(question: "What is your favorite pokemon?", survey_id: 1)

Question.create(question: "What is your favorite food?", survey_id: 2)
Question.create(question: "What is your favorite drink?", survey_id: 2)
Question.create(question: "What is your favorite pokemon?", survey_id: 2)

Question.create(question: "What is your favorite food?", survey_id: 3)
Question.create(question: "What is your favorite drink?", survey_id: 3)
Question.create(question: "What is your favorite pokemon?", survey_id: 3)

Question.create(question: "What is your favorite food?", survey_id: 4)
Question.create(question: "What is your favorite drink?", survey_id: 4)
Question.create(question: "What is your favorite pokemon?", survey_id: 4)

Question.create(question: "What is your favorite food?", survey_id:5)
Question.create(question: "What is your favorite drink?", survey_id:5)
Question.create(question: "What is your favorite pokemon?", survey_id: 5)

Choice.create(choice: "Pizza", question_id: 1)
Choice.create(choice: "Hamburgers", question_id: 1)
Choice.create(choice: "Hotdogs", question_id: 1)

Choice.create(choice: "Beer", question_id: 2)
Choice.create(choice: "Wine", question_id: 2)
Choice.create(choice: "Hard Alcohol", question_id: 2)

Choice.create(choice: "Venusaur", question_id: 3)
Choice.create(choice: "Blastoise", question_id: 3)
Choice.create(choice: "Charizard", question_id: 3)

Choice.create(choice: "Pizza", question_id: 4)
Choice.create(choice: "Hamburgers", question_id: 4)
Choice.create(choice: "Hotdogs", question_id: 4)

Choice.create(choice: "Beer", question_id: 5)
Choice.create(choice: "Wine", question_id: 5)
Choice.create(choice: "Hard Alcohol", question_id: 5)

Choice.create(choice: "Venusaur", question_id: 6)
Choice.create(choice: "Blastoise", question_id: 6)
Choice.create(choice: "Charizard", question_id: 6)

Choice.create(choice: "Pizza", question_id: 7)
Choice.create(choice: "Hamburgers", question_id: 7)
Choice.create(choice: "Hotdogs", question_id: 7)

Choice.create(choice: "Beer", question_id: 8)
Choice.create(choice: "Wine", question_id: 8)
Choice.create(choice: "Hard Alcohol", question_id: 8)

Choice.create(choice: "Venusaur", question_id: 9)
Choice.create(choice: "Blastoise", question_id: 9)
Choice.create(choice: "Charizard", question_id: 9)

Choice.create(choice: "Pizza", question_id: 10)
Choice.create(choice: "Hamburgers", question_id: 10)
Choice.create(choice: "Hotdogs", question_id: 10)

Choice.create(choice: "Beer", question_id: 11)
Choice.create(choice: "Wine", question_id: 11)
Choice.create(choice: "Hard Alcohol", question_id: 11)

Choice.create(choice: "Venusaur", question_id: 12)
Choice.create(choice: "Blastoise", question_id: 12)
Choice.create(choice: "Charizard", question_id: 12)

Choice.create(choice: "Pizza", question_id: 13)
Choice.create(choice: "Hamburgers", question_id: 13)
Choice.create(choice: "Hotdogs", question_id: 13)

Choice.create(choice: "Beer", question_id: 14)
Choice.create(choice: "Wine", question_id: 14)
Choice.create(choice: "Hard Alcohol", question_id: 14)

Choice.create(choice: "Venusaur", question_id: 15)
Choice.create(choice: "Blastoise", question_id: 15)
Choice.create(choice: "Charizard", question_id: 15)

# Response.create(choice_id: 1, surveyed_user_id: 1)

# SurveyedUser.create(user_id: 1, response_id: 1)
