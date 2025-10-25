# typed: strong

module WhopSDK
  module Models
    # The available visibilities for a lesson. Determines how / whether a lesson is
    # visible to users.
    module LessonVisibilities
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::LessonVisibilities) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, WhopSDK::LessonVisibilities::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::LessonVisibilities::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::LessonVisibilities::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
