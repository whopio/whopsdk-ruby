# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class CreatePartnerReferralRequestsRequestBodyTargetUsername < Internal::Types::Model
        field :authorized_user_id, -> { String }, optional: true, nullable: false

        field :target_username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
