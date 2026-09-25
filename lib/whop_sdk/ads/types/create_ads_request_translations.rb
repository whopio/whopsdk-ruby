# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Shows a Meta ad in other languages. Each viewer sees the version for their language; everyone else sees the ad's
      # own copy. Tag every copy and creatives entry with its language: the ad's own with `source_language`, and give
      # every other language a `primary_texts` and `headlines` entry (a `descriptions` entry and a `creatives` entry are
      # optional), or list it in `automatic_languages`. Needs a website destination, one image or video, and exactly one
      # primary text and headline of the ad's own (and at most one description), with no Dynamic Creative or crops.
      # Replaced as a whole when sent, so send `automatic_languages` with `source_language`. null turns translations off
      # and deletes their media. Meta-only.
      class CreateAdsRequestTranslations < Internal::Types::Model
        field :automatic_languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :source_language, -> { String }, optional: false, nullable: false
      end
    end
  end
end
