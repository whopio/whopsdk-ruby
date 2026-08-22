# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      class AddPeopleAudiencesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :file_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
