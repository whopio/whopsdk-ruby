# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#create
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account to charge for, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute plan_id
      #   The plan to charge for, prefixed `plan_`. It must belong to the account.
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute capture
      #   Whether to capture a card payment immediately. Defaults to true. Pass false to
      #   place an authorization hold that must be captured in full within five days via
      #   the capture endpoint.
      #
      #   @return [Boolean, nil]
      optional :capture, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute confirmation_token
      #   A confirmation token describing a payment method the buyer just supplied.
      #   Provide this instead of `member_id` and `payment_method_id`; the buyer is
      #   resolved from the token's billing email, or from `email`. The buyer may still
      #   have a step to complete — poll the payment's status for what to do next.
      #
      #   @return [String, nil]
      optional :confirmation_token, String, nil?: true

      # @!attribute email
      #   Overrides the buyer email carried on the confirmation token, resolving or
      #   creating the user the payment belongs to. Ignored unless `confirmation_token` is
      #   provided, and when the token was created by a signed-in buyer.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute member_id
      #   The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      #   `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute metadata
      #   Custom metadata to attach to the payment.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[String], nil?: true

      # @!attribute payment_method_id
      #   The stored payment method to charge, prefixed `payt_`. It must belong to the
      #   member. Required unless `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute promo_code_id
      #   An active promo code to apply, prefixed `promo_`. It must belong to the account
      #   and be valid for the plan.
      #
      #   @return [String, nil]
      optional :promo_code_id, String, nil?: true

      # @!attribute return_url
      #   Where the buyer continues after completing an off-site step. An absolute https
      #   URL without credentials, at most 2,048 characters. Ignored unless
      #   `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id:, plan_id:, capture: nil, confirmation_token: nil, email: nil, member_id: nil, metadata: nil, payment_method_id: nil, promo_code_id: nil, return_url: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentCreateParams} for more details.
      #
      #   @param account_id [String] The account to charge for, prefixed `biz_`.
      #
      #   @param plan_id [String] The plan to charge for, prefixed `plan_`. It must belong to the account.
      #
      #   @param capture [Boolean, nil] Whether to capture a card payment immediately. Defaults to true. Pass false to p
      #
      #   @param confirmation_token [String, nil] A confirmation token describing a payment method the buyer just supplied. Provid
      #
      #   @param email [String, nil] Overrides the buyer email carried on the confirmation token, resolving or creati
      #
      #   @param member_id [String, nil] The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Custom metadata to attach to the payment.
      #
      #   @param payment_method_id [String, nil] The stored payment method to charge, prefixed `payt_`. It must belong to the mem
      #
      #   @param promo_code_id [String, nil] An active promo code to apply, prefixed `promo_`. It must belong to the account
      #
      #   @param return_url [String, nil] Where the buyer continues after completing an off-site step. An absolute https U
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
