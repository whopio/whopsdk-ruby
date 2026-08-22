# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class ChallengePasskeysRequest < Internal::Types::Model
          field :challenge_type, -> { Whop_sdk::Users::Passkeys::Types::ChallengePasskeysRequestChallengeType }, optional: false, nullable: false

          field :passkey_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
