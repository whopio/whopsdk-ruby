# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      class RetrieveAuthorizedUsersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
