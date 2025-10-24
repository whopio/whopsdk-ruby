# frozen_string_literal: true

module WhopSDK
  module Models
    # The available types for an assessment question
    module AssessmentQuestionTypes
      extend WhopSDK::Internal::Type::Enum

      SHORT_ANSWER = :short_answer
      TRUE_FALSE = :true_false
      MULTIPLE_CHOICE = :multiple_choice
      MULTIPLE_SELECT = :multiple_select

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
