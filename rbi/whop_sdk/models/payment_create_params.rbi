# typed: strong

module WhopSDK
  module Models
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The account to charge for, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # The plan to charge for, prefixed `plan_`. It must belong to the account.
      sig { returns(String) }
      attr_accessor :plan_id

      # Whether to capture a card payment immediately. Defaults to true. Pass false to
      # place an authorization hold that must be captured in full within five days via
      # the capture endpoint.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :capture

      # A confirmation token describing a payment method the buyer just supplied.
      # Provide this instead of `member_id` and `payment_method_id`; the buyer is
      # resolved from the token's billing email, or from `email`. The buyer may still
      # have a step to complete — poll the payment's status for what to do next.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token

      # Overrides the buyer email carried on the confirmation token, resolving or
      # creating the user the payment belongs to. Ignored unless `confirmation_token` is
      # provided, and when the token was created by a signed-in buyer.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      # `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # Custom metadata to attach to the payment.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # The stored payment method to charge, prefixed `payt_`. It must belong to the
      # member. Required unless `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # An active promo code to apply, prefixed `promo_`. It must belong to the account
      # and be valid for the plan.
      sig { returns(T.nilable(String)) }
      attr_accessor :promo_code_id

      # Where the buyer continues after completing an off-site step. An absolute https
      # URL without credentials, at most 2,048 characters. Ignored unless
      # `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          account_id: String,
          plan_id: String,
          capture: T.nilable(T::Boolean),
          confirmation_token: T.nilable(String),
          email: T.nilable(String),
          member_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          payment_method_id: T.nilable(String),
          promo_code_id: T.nilable(String),
          return_url: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account to charge for, prefixed `biz_`.
        account_id:,
        # The plan to charge for, prefixed `plan_`. It must belong to the account.
        plan_id:,
        # Whether to capture a card payment immediately. Defaults to true. Pass false to
        # place an authorization hold that must be captured in full within five days via
        # the capture endpoint.
        capture: nil,
        # A confirmation token describing a payment method the buyer just supplied.
        # Provide this instead of `member_id` and `payment_method_id`; the buyer is
        # resolved from the token's billing email, or from `email`. The buyer may still
        # have a step to complete — poll the payment's status for what to do next.
        confirmation_token: nil,
        # Overrides the buyer email carried on the confirmation token, resolving or
        # creating the user the payment belongs to. Ignored unless `confirmation_token` is
        # provided, and when the token was created by a signed-in buyer.
        email: nil,
        # The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
        # `confirmation_token` is provided.
        member_id: nil,
        # Custom metadata to attach to the payment.
        metadata: nil,
        # The stored payment method to charge, prefixed `payt_`. It must belong to the
        # member. Required unless `confirmation_token` is provided.
        payment_method_id: nil,
        # An active promo code to apply, prefixed `promo_`. It must belong to the account
        # and be valid for the plan.
        promo_code_id: nil,
        # Where the buyer continues after completing an off-site step. An absolute https
        # URL without credentials, at most 2,048 characters. Ignored unless
        # `confirmation_token` is provided.
        return_url: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            plan_id: String,
            capture: T.nilable(T::Boolean),
            confirmation_token: T.nilable(String),
            email: T.nilable(String),
            member_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            payment_method_id: T.nilable(String),
            promo_code_id: T.nilable(String),
            return_url: T.nilable(String),
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
