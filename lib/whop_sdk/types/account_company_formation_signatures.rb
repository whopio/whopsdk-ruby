# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCompanyFormationSignatures < Internal::Types::Model
      field :form8821, -> { Whop_sdk::Types::AccountCompanyFormationSignatureRequest }, optional: true, nullable: false

      field :ss4, -> { Whop_sdk::Types::AccountCompanyFormationSignatureRequest }, optional: true, nullable: false
    end
  end
end
