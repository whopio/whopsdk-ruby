# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      # Destination account ID or wallet address. Object form is supported for compatibility. Any business resolves by
      # its account ID without authentication; a user account resolves only for that same authenticated user.
      class CreateDepositsRequestDestination < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { String }

        member -> { Whop_sdk::Deposits::Types::CreateDepositsRequestDestinationAccountID }
      end
    end
  end
end
