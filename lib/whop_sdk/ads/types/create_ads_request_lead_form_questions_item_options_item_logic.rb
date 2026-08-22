# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class CreateAdsRequestLeadFormQuestionsItemOptionsItemLogic < Internal::Types::Model
        field :action, -> { Whop_sdk::Ads::Types::CreateAdsRequestLeadFormQuestionsItemOptionsItemLogicAction }, optional: true, nullable: false

        field :target_end_page_index, -> { Integer }, optional: true, nullable: false

        field :target_question_index, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
