# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company attached to this affiliate
    class AffiliateCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
