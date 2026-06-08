# typed: strong

module WhopSDK
  module Resources
    class CardAccount
      # Updates the auto-topup configuration on the account's card account.
      sig do
        params(
          account_id: String,
          auto_topup_enabled: T::Boolean,
          auto_topup_target_usd: String,
          auto_topup_threshold_usd: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardAccountAPI)
      end
      def update(
        # Query param: The business or user account ID that owns the card account.
        account_id:,
        # Body param: Whether auto-topup is enabled.
        auto_topup_enabled: nil,
        # Body param: Target balance (USD) to top up to. Must exceed the threshold by at
        # least $10.
        auto_topup_target_usd: nil,
        # Body param: Balance threshold (USD) that triggers an auto-topup. Required when
        # enabling.
        auto_topup_threshold_usd: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
