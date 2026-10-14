# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module PaypalLinkSessions
      module Types
        class CreatePaypalLinkSessionsResponse < Internal::Types::Model
          field :authorize_url, -> { String }, optional: false, nullable: false

          field :expires_at, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
