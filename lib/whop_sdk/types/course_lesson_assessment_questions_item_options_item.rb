# frozen_string_literal: true

module Whop_sdk
  module Types
    # An answer option for a multiple choice or multiple select assessment question
    class CourseLessonAssessmentQuestionsItemOptionsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :is_correct, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :option_text, -> { String }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false
    end
  end
end
