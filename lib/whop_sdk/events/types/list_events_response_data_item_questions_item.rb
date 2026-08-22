# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemQuestionsItem < Internal::Types::Model
        field :answer, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :key, -> { String }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :question, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false
      end
    end
  end
end
