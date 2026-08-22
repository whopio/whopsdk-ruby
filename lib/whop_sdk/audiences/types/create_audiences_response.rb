# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      class CreateAudiencesResponse < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Types::Audience }

        member -> { Whop_sdk::Audiences::Types::CreateAudiencesResponseData }
      end
    end
  end
end
