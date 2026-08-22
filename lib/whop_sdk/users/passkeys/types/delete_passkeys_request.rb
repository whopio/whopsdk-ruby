# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class DeletePasskeysRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :authenticator_data, -> { String }, optional: false, nullable: false

          field :client_data_json, -> { String }, optional: false, nullable: false

          field :signature, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
