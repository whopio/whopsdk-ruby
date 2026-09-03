# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Types
      class CreateAffiliatesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :user_identifier, -> { String }, optional: false, nullable: false
      end
    end
  end
end
