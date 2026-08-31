# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      class CreateConfirmationTokensRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :billing_details, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestBillingDetails }, optional: true, nullable: false

        field :browser_info, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :payment_method, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethod }, optional: false, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false

        field :setup_future_usage, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestSetupFutureUsage }, optional: true, nullable: false
      end
    end
  end
end
