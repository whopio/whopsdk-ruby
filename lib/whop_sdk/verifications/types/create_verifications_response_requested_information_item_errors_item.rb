# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class CreateVerificationsResponseRequestedInformationItemErrorsItem < Internal::Types::Model
        field :code, -> { String }, optional: true, nullable: false

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
