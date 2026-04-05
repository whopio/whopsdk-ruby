# typed: strong

module WhopSDK
  module Models
    InvoiceMarkPaidResponse =
      T.let(T::Boolean, WhopSDK::Internal::Type::Converter)
  end
end
