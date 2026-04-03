# typed: strong

module WhopSDK
  module Models
    InvoiceMarkUncollectibleResponse =
      T.let(T::Boolean, WhopSDK::Internal::Type::Converter)
  end
end
