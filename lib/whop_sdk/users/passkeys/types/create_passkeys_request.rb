# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class CreatePasskeysRequest < Internal::Types::Model
          field :attestation_object, -> { String }, optional: false, nullable: false

          field :client_data_json, -> { String }, optional: false, nullable: false

          field :credential_id, -> { String }, optional: false, nullable: false

          field :nickname, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
