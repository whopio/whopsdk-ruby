# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      class UpdateCompaniesRequestLogo < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
