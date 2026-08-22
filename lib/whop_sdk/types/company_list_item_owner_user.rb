# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user who owns and has full administrative control over this company.
    class CompanyListItemOwnerUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
