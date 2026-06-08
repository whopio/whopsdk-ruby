# typed: strong

module WhopSDK
  module Models
    class CardAccountAPI < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardAccountAPI, WhopSDK::Internal::AnyHash)
        end

      # Whether auto-topup is enabled.
      sig { returns(T::Boolean) }
      attr_accessor :auto_topup_enabled

      sig { returns(WhopSDK::CardAccountAPI::Object::TaggedSymbol) }
      attr_accessor :object

      # Target balance (USD) to top up to.
      sig { returns(T.nilable(String)) }
      attr_accessor :auto_topup_target_usd

      # Balance threshold (USD) that triggers an auto-topup.
      sig { returns(T.nilable(String)) }
      attr_accessor :auto_topup_threshold_usd

      sig do
        params(
          auto_topup_enabled: T::Boolean,
          object: WhopSDK::CardAccountAPI::Object::OrSymbol,
          auto_topup_target_usd: T.nilable(String),
          auto_topup_threshold_usd: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether auto-topup is enabled.
        auto_topup_enabled:,
        object:,
        # Target balance (USD) to top up to.
        auto_topup_target_usd: nil,
        # Balance threshold (USD) that triggers an auto-topup.
        auto_topup_threshold_usd: nil
      )
      end

      sig do
        override.returns(
          {
            auto_topup_enabled: T::Boolean,
            object: WhopSDK::CardAccountAPI::Object::TaggedSymbol,
            auto_topup_target_usd: T.nilable(String),
            auto_topup_threshold_usd: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardAccountAPI::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_ACCOUNT =
          T.let(:card_account, WhopSDK::CardAccountAPI::Object::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CardAccountAPI::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
