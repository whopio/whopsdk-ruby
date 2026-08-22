# frozen_string_literal: true

module Whop_sdk
  module Forums
    module Types
      class RetrieveForumsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
