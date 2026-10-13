# frozen_string_literal: true

module Whop_sdk
  module Members
    module Notes
      module Types
        class CreateNotesRequest < Internal::Types::Model
          field :member_id, -> { String }, optional: false, nullable: false

          field :content, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
