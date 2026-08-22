# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company this authorized user has access to.
    class AuthorizedUserCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
