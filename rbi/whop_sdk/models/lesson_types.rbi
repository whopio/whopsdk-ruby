# typed: strong

module WhopSDK
  module Models
    # The available types for a lesson
    module LessonTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::LessonTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TEXT = T.let(:text, WhopSDK::LessonTypes::TaggedSymbol)
      VIDEO = T.let(:video, WhopSDK::LessonTypes::TaggedSymbol)
      PDF = T.let(:pdf, WhopSDK::LessonTypes::TaggedSymbol)
      MULTI = T.let(:multi, WhopSDK::LessonTypes::TaggedSymbol)
      QUIZ = T.let(:quiz, WhopSDK::LessonTypes::TaggedSymbol)
      KNOWLEDGE_CHECK =
        T.let(:knowledge_check, WhopSDK::LessonTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::LessonTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
