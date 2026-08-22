# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        # Parameters for CreateAffiliateOverride
        class CreateOverridesRequestBody < Internal::Types::Model
          extend Whop_sdk::Internal::Types::Union

          discriminant :override_type

          member -> { Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBodyStandard }, key: "STANDARD"

          member -> { Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBodyRevShare }, key: "REV_SHARE"
        end
      end
    end
  end
end
