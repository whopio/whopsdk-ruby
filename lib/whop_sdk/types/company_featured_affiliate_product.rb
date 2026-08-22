# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product featured for affiliates to promote on this company's affiliate page. Null if none is configured.
    class CompanyFeaturedAffiliateProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
