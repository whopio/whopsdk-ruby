# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCompanyFormationSignatureRequest < Internal::Types::Model
      field :expires_at, -> { String }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::AccountCompanyFormationSignatureRequestStatus }, optional: false, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
