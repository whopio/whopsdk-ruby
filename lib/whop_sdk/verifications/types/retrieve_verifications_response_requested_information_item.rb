# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class RetrieveVerificationsResponseRequestedInformationItem < Internal::Types::Model
        field :errors, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::RetrieveVerificationsResponseRequestedInformationItemErrorsItem] }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :label, -> { String }, optional: false, nullable: false

        field :optional, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :requirement, -> { String }, optional: false, nullable: false

        field :type, -> { String }, optional: false, nullable: false
      end
    end
  end
end
