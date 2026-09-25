# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class CreatePartnerReferralRequestsRequestBodyTargetUserID < Internal::Types::Model
        field :target_user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
