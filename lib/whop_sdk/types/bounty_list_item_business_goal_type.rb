# frozen_string_literal: true

module Whop_sdk
  module Types
    module BountyListItemBusinessGoalType
      extend Whop_sdk::Internal::Types::Enum

      CLIPPING = "clipping"
      POST_ENGAGEMENT = "post_engagement"
      OWNED_ACCOUNT_GROWTH = "owned_account_growth"
      UGC_CONTENT = "ugc_content"
      LOCAL_ACTIVATION = "local_activation"
      DATA_CAPTURE = "data_capture"
      OTHER = "other"
    end
  end
end
