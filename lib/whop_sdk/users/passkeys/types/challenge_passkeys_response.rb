# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class ChallengePasskeysResponse < Internal::Types::Model
          field :challenge, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
