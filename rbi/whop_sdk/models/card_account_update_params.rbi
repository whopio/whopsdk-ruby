# typed: strong

module WhopSDK
  module Models
    class CardAccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardAccountUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The business or user account ID that owns the card account.
      sig { returns(String) }
      attr_accessor :account_id

      # Whether auto-topup is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_topup_enabled

      sig { params(auto_topup_enabled: T::Boolean).void }
      attr_writer :auto_topup_enabled

      # Target balance (USD) to top up to. Must exceed the threshold by at least $10.
      sig { returns(T.nilable(String)) }
      attr_reader :auto_topup_target_usd

      sig { params(auto_topup_target_usd: String).void }
      attr_writer :auto_topup_target_usd

      # Balance threshold (USD) that triggers an auto-topup. Required when enabling.
      sig { returns(T.nilable(String)) }
      attr_reader :auto_topup_threshold_usd

      sig { params(auto_topup_threshold_usd: String).void }
      attr_writer :auto_topup_threshold_usd

      sig do
        params(
          account_id: String,
          auto_topup_enabled: T::Boolean,
          auto_topup_target_usd: String,
          auto_topup_threshold_usd: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business or user account ID that owns the card account.
        account_id:,
        # Whether auto-topup is enabled.
        auto_topup_enabled: nil,
        # Target balance (USD) to top up to. Must exceed the threshold by at least $10.
        auto_topup_target_usd: nil,
        # Balance threshold (USD) that triggers an auto-topup. Required when enabling.
        auto_topup_threshold_usd: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            auto_topup_enabled: T::Boolean,
            auto_topup_target_usd: String,
            auto_topup_threshold_usd: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
