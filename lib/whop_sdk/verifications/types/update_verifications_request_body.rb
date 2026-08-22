# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class UpdateVerificationsRequestBody < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyPersonalAddress }

        member -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddress }
      end
    end
  end
end
