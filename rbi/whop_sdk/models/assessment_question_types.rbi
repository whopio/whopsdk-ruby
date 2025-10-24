# typed: strong

module WhopSDK
  module Models
    # The available types for an assessment question
    module AssessmentQuestionTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::AssessmentQuestionTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SHORT_ANSWER =
        T.let(:short_answer, WhopSDK::AssessmentQuestionTypes::TaggedSymbol)
      TRUE_FALSE =
        T.let(:true_false, WhopSDK::AssessmentQuestionTypes::TaggedSymbol)
      MULTIPLE_CHOICE =
        T.let(:multiple_choice, WhopSDK::AssessmentQuestionTypes::TaggedSymbol)
      MULTIPLE_SELECT =
        T.let(:multiple_select, WhopSDK::AssessmentQuestionTypes::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::AssessmentQuestionTypes::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
