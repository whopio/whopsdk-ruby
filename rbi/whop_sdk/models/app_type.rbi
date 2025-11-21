# typed: strong

module WhopSDK
  module Models
    # The type of end-user an app is built for
    module AppType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      B2B_APP = T.let(:b2b_app, WhopSDK::AppType::TaggedSymbol)
      B2C_APP = T.let(:b2c_app, WhopSDK::AppType::TaggedSymbol)
      COMPANY_APP = T.let(:company_app, WhopSDK::AppType::TaggedSymbol)
      COMPONENT = T.let(:component, WhopSDK::AppType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AppType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
