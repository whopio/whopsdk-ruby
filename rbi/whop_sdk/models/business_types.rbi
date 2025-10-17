# typed: strong

module WhopSDK
  module Models
    # The different business types a company can be.
    module BusinessTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::BusinessTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EDUCATION_PROGRAM =
        T.let(:education_program, WhopSDK::BusinessTypes::TaggedSymbol)
      COACHING = T.let(:coaching, WhopSDK::BusinessTypes::TaggedSymbol)
      SOFTWARE = T.let(:software, WhopSDK::BusinessTypes::TaggedSymbol)
      PAID_GROUP = T.let(:paid_group, WhopSDK::BusinessTypes::TaggedSymbol)
      NEWSLETTER = T.let(:newsletter, WhopSDK::BusinessTypes::TaggedSymbol)
      AGENCY = T.let(:agency, WhopSDK::BusinessTypes::TaggedSymbol)
      PHYSICAL_PRODUCTS =
        T.let(:physical_products, WhopSDK::BusinessTypes::TaggedSymbol)
      BRICK_AND_MORTAR =
        T.let(:brick_and_mortar, WhopSDK::BusinessTypes::TaggedSymbol)
      EVENTS = T.let(:events, WhopSDK::BusinessTypes::TaggedSymbol)
      COACHING_AND_COURSES =
        T.let(:coaching_and_courses, WhopSDK::BusinessTypes::TaggedSymbol)
      OTHER = T.let(:other, WhopSDK::BusinessTypes::TaggedSymbol)
      SAAS = T.let(:saas, WhopSDK::BusinessTypes::TaggedSymbol)
      COURSE = T.let(:course, WhopSDK::BusinessTypes::TaggedSymbol)
      COMMUNITY = T.let(:community, WhopSDK::BusinessTypes::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::BusinessTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
