# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Direct
      module Types
        class CreateDirectRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :billing_details, -> { Whop_sdk::SetupIntents::Direct::Types::CreateDirectRequestBillingDetails }, optional: false, nullable: false

          field :currency, -> { String }, optional: true, nullable: false

          field :member_id, -> { String }, optional: true, nullable: false

          field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

          field :payment_method, -> { Whop_sdk::SetupIntents::Direct::Types::CreateDirectRequestPaymentMethod }, optional: false, nullable: false

          field :return_url, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
