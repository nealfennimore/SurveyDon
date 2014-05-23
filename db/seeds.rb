User.create

Survey.create(user_id: 1)

Question.create(survey_id: 1)

Choice.create(question_id: 1)

Response.create(choice_id: 1, surveyed_user_id: 1)

SurveyedUser.create(user_id: 1, survey_id: 1)