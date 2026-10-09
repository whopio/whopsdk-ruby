# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainVerification < Internal::Types::Model
      field :state, -> { Whop_sdk::Types::DomainVerificationState }, optional: false, nullable: false

      field :verification_expires_at, -> { String }, optional: false, nullable: true
    end
  end
end
