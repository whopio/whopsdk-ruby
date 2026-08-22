# frozen_string_literal: true

module Whop_sdk
  module Types
    # A company is a seller on Whop. Companies own products, manage members, and receive payouts.
    class IdentityProfileLinkedCompaniesItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
