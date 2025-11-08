# typed: strong

module WhopSDK
  module Models
    # The available visibilities for a course. Determines how / whether a course is
    # visible to users.
    module CourseVisibilities
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CourseVisibilities) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, WhopSDK::CourseVisibilities::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::CourseVisibilities::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::CourseVisibilities::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
