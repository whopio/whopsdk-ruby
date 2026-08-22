# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class CreateVerificationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :body, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBody }, optional: false, nullable: false
      end
    end
  end
end
