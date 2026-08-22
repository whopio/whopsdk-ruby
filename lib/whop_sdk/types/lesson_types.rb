# frozen_string_literal: true

module Whop_sdk
  module Types
    module LessonTypes
      extend Whop_sdk::Internal::Types::Enum

      TEXT = "text"
      VIDEO = "video"
      PDF = "pdf"
      MULTI = "multi"
      QUIZ = "quiz"
      KNOWLEDGE_CHECK = "knowledge_check"
    end
  end
end
