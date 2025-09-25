# typed: strong

module Whopsdk
  module Models
    # The different business types a company can be.
    module BusinessTypes
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::BusinessTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EDUCATION_PROGRAM =
        T.let(:education_program, Whopsdk::BusinessTypes::TaggedSymbol)
      COACHING = T.let(:coaching, Whopsdk::BusinessTypes::TaggedSymbol)
      SOFTWARE = T.let(:software, Whopsdk::BusinessTypes::TaggedSymbol)
      PAID_GROUP = T.let(:paid_group, Whopsdk::BusinessTypes::TaggedSymbol)
      NEWSLETTER = T.let(:newsletter, Whopsdk::BusinessTypes::TaggedSymbol)
      AGENCY = T.let(:agency, Whopsdk::BusinessTypes::TaggedSymbol)
      PHYSICAL_PRODUCTS =
        T.let(:physical_products, Whopsdk::BusinessTypes::TaggedSymbol)
      BRICK_AND_MORTAR =
        T.let(:brick_and_mortar, Whopsdk::BusinessTypes::TaggedSymbol)
      EVENTS = T.let(:events, Whopsdk::BusinessTypes::TaggedSymbol)
      COACHING_AND_COURSES =
        T.let(:coaching_and_courses, Whopsdk::BusinessTypes::TaggedSymbol)
      OTHER = T.let(:other, Whopsdk::BusinessTypes::TaggedSymbol)
      SAAS = T.let(:saas, Whopsdk::BusinessTypes::TaggedSymbol)
      COURSE = T.let(:course, Whopsdk::BusinessTypes::TaggedSymbol)
      COMMUNITY = T.let(:community, Whopsdk::BusinessTypes::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::BusinessTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
