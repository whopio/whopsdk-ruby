# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdTranslations < Internal::Types::Model
      field :automatic_languages, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :source_language, -> { String }, optional: false, nullable: false
    end
  end
end
