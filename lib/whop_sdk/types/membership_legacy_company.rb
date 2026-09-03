# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company this membership belongs to.
    class MembershipLegacyCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
