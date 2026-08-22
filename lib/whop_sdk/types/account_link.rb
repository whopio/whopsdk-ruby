# frozen_string_literal: true

module Whop_sdk
  module Types
    # A temporary, time-limited URL that grants a user access to an external account management page.
    class AccountLink < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
