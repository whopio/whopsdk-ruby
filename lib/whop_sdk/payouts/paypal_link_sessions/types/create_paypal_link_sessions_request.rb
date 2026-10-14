# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module PaypalLinkSessions
      module Types
        class CreatePaypalLinkSessionsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: true, nullable: false

          field :destination_currency, -> { String }, optional: true, nullable: false

          field :return_url, -> { String }, optional: false, nullable: false

          field :supported_payout_method_id, -> { String }, optional: false, nullable: false

          field :user_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
