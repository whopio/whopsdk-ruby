# frozen_string_literal: true

module Whop_sdk
  module Types
    # An assessment question in a course quiz or knowledge check
    class CourseLessonAssessmentQuestionsItem < Internal::Types::Model
      field :correct_answer, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :image, -> { Whop_sdk::Types::CourseLessonAssessmentQuestionsItemImage }, optional: false, nullable: true

      field :options, -> { Internal::Types::Array[Whop_sdk::Types::CourseLessonAssessmentQuestionsItemOptionsItem] }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :question_text, -> { String }, optional: false, nullable: false

      field :question_type, -> { Whop_sdk::Types::CoursesAssessmentQuestionTypes }, optional: false, nullable: false
    end
  end
end
