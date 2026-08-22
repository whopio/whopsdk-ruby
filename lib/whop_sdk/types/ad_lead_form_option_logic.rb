# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormOptionLogic < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::AdLeadFormOptionLogicAction }, optional: false, nullable: false

      field :target_end_page_index, -> { Integer }, optional: true, nullable: false

      field :target_question_index, -> { Integer }, optional: true, nullable: false
    end
  end
end
