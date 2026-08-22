# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class UpdateVerificationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :body, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBody }, optional: false, nullable: false
      end
    end
  end
end
