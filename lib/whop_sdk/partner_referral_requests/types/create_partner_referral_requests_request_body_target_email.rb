# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class CreatePartnerReferralRequestsRequestBodyTargetEmail < Internal::Types::Model
        field :authorized_user_id, -> { String }, optional: true, nullable: false

        field :target_email, -> { String }, optional: false, nullable: false
      end
    end
  end
end
