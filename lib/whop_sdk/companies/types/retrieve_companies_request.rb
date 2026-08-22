# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      class RetrieveCompaniesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
