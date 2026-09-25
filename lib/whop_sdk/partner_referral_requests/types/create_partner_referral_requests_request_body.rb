# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class CreatePartnerReferralRequestsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyAccountID }

        member -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyAccountURL }

        member -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyTargetUserID }

        member -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyUsername }

        member -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyCode }
      end
    end
  end
end
