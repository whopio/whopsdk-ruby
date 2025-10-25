# frozen_string_literal: true

module WhopSDK
  module Models
    # The available types for a lesson
    module LessonTypes
      extend WhopSDK::Internal::Type::Enum

      TEXT = :text
      VIDEO = :video
      PDF = :pdf
      MULTI = :multi
      QUIZ = :quiz
      KNOWLEDGE_CHECK = :knowledge_check

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
