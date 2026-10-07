# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class CreatePartnerReferralRequestsRequestBodyAccountID < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :authorized_user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
