# typed: strong

module WhopSDK
  module Models
    # The different statuses an invoice can be in
    module InvoiceStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::InvoiceStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, WhopSDK::InvoiceStatus::TaggedSymbol)
      OPEN = T.let(:open, WhopSDK::InvoiceStatus::TaggedSymbol)
      PAID = T.let(:paid, WhopSDK::InvoiceStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, WhopSDK::InvoiceStatus::TaggedSymbol)
      VOID = T.let(:void, WhopSDK::InvoiceStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::InvoiceStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
