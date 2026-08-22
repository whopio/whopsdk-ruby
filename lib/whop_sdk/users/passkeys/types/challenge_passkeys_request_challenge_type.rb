# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        module ChallengePasskeysRequestChallengeType
          extend Whop_sdk::Internal::Types::Enum

          REGISTRATION = "registration"
          DELETION = "deletion"
        end
      end
    end
  end
end
