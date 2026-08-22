# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # The company's banner image. Accepts PNG or JPEG format.
      class UpdateCompaniesRequestBannerImage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
