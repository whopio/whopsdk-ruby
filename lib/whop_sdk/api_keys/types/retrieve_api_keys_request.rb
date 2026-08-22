# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      class RetrieveAPIKeysRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
