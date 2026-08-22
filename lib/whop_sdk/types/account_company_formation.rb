# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCompanyFormation < Internal::Types::Model
      field :documents, -> { Internal::Types::Array[Whop_sdk::Types::AccountCompanyFormationDocument] }, optional: true, nullable: false

      field :ein_registered, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :legal_name, -> { String }, optional: true, nullable: false

      field :signatures, -> { Whop_sdk::Types::AccountCompanyFormationSignatures }, optional: true, nullable: false

      field :state_registered, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::AccountCompanyFormationStatus }, optional: true, nullable: false
    end
  end
end
