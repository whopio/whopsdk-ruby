# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainIssue < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
