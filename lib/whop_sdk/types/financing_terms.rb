# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingTerms < Internal::Types::Model
      field :content, -> { String }, optional: false, nullable: false

      field :disclosure, -> { String }, optional: false, nullable: false

      field :fees_url, -> { String }, optional: false, nullable: false

      field :policies, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: false, nullable: false
    end
  end
end
