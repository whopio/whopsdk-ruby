# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupLearningProgress < Internal::Types::Model
      field :conversion_threshold, -> { Integer }, optional: false, nullable: false

      field :conversions, -> { Integer }, optional: false, nullable: false

      field :progress_percent, -> { Integer }, optional: false, nullable: false
    end
  end
end
