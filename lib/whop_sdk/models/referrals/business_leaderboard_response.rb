# frozen_string_literal: true

module WhopSDK
  module Models
    module Referrals
      # @see WhopSDK::Resources::Referrals::Businesses#leaderboard
      class BusinessLeaderboardResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute leaders
        #   The top referrers by total earnings, best first.
        #
        #   @return [Array<WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader>]
        required :leaders,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader] }

        # @!attribute me
        #   The caller's own standing; null when the caller has no referral earnings.
        #
        #   @return [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me, nil]
        required :me, -> { WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me }, nil?: true

        # @!method initialize(leaders:, me:)
        #   @param leaders [Array<WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader>] The top referrers by total earnings, best first.
        #
        #   @param me [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me, nil] The caller's own standing; null when the caller has no referral earnings.

        class Leader < WhopSDK::Internal::Type::BaseModel
          # @!attribute first_referral_started_at
          #   When the referrer's earliest business referral became active.
          #
          #   @return [Time]
          required :first_referral_started_at, Time

          # @!attribute rank
          #   1-based leaderboard position.
          #
          #   @return [Integer]
          required :rank, Integer

          # @!attribute total_earnings_usd
          #   The referrer's pending + completed earnings across all referred businesses, in
          #   USD.
          #
          #   @return [String]
          required :total_earnings_usd, String

          # @!attribute total_volume_usd
          #   Credited GMV across all the referrer's referred businesses, in USD.
          #
          #   @return [String]
          required :total_volume_usd, String

          # @!attribute user
          #   The ranked referrer. Identity fields (id, name, username, profile_picture) are
          #   returned only on the caller's own entry; other referrers expose coarse location
          #   only.
          #
          #   @return [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User, nil]
          required :user, -> { WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User }, nil?: true

          # @!method initialize(first_referral_started_at:, rank:, total_earnings_usd:, total_volume_usd:, user:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader} for more
          #   details.
          #
          #   @param first_referral_started_at [Time] When the referrer's earliest business referral became active.
          #
          #   @param rank [Integer] 1-based leaderboard position.
          #
          #   @param total_earnings_usd [String] The referrer's pending + completed earnings across all referred businesses, in U
          #
          #   @param total_volume_usd [String] Credited GMV across all the referrer's referred businesses, in USD.
          #
          #   @param user [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User, nil] The ranked referrer. Identity fields (id, name, username, profile_picture) are r

          # @see WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute city
            #   The city where the referrer is located, derived from their IP address. Null if
            #   location sharing is disabled.
            #
            #   @return [String, nil]
            required :city, String, nil?: true

            # @!attribute country
            #   The country where the referrer is located, derived from their IP address. Null
            #   if location sharing is disabled.
            #
            #   @return [String, nil]
            required :country, String, nil?: true

            # @!attribute id
            #   User ID, prefixed `user_`. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute name
            #   The user's display name. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute profile_picture
            #   The user's profile picture. Present only on the caller's own entry.
            #
            #   @return [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture, nil]
            optional :profile_picture,
                     -> { WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture }

            # @!attribute username
            #   The user's unique username. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(city:, country:, id: nil, name: nil, profile_picture: nil, username: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User} for more
            #   details.
            #
            #   The ranked referrer. Identity fields (id, name, username, profile_picture) are
            #   returned only on the caller's own entry; other referrers expose coarse location
            #   only.
            #
            #   @param city [String, nil] The city where the referrer is located, derived from their IP address. Null if l
            #
            #   @param country [String, nil] The country where the referrer is located, derived from their IP address. Null i
            #
            #   @param id [String] User ID, prefixed `user_`. Present only on the caller's own entry.
            #
            #   @param name [String, nil] The user's display name. Present only on the caller's own entry.
            #
            #   @param profile_picture [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture] The user's profile picture. Present only on the caller's own entry.
            #
            #   @param username [String] The user's unique username. Present only on the caller's own entry.

            # @see WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User#profile_picture
            class ProfilePicture < WhopSDK::Internal::Type::BaseModel
              # @!attribute url
              #   The user's profile picture URL.
              #
              #   @return [String]
              required :url, String

              # @!method initialize(url:)
              #   The user's profile picture. Present only on the caller's own entry.
              #
              #   @param url [String] The user's profile picture URL.
            end
          end
        end

        # @see WhopSDK::Models::Referrals::BusinessLeaderboardResponse#me
        class Me < WhopSDK::Internal::Type::BaseModel
          # @!attribute first_referral_started_at
          #   When the referrer's earliest business referral became active.
          #
          #   @return [Time]
          required :first_referral_started_at, Time

          # @!attribute rank
          #   1-based leaderboard position.
          #
          #   @return [Integer]
          required :rank, Integer

          # @!attribute total_earnings_usd
          #   The referrer's pending + completed earnings across all referred businesses, in
          #   USD.
          #
          #   @return [String]
          required :total_earnings_usd, String

          # @!attribute total_volume_usd
          #   Credited GMV across all the referrer's referred businesses, in USD.
          #
          #   @return [String]
          required :total_volume_usd, String

          # @!attribute user
          #   The ranked referrer. Identity fields (id, name, username, profile_picture) are
          #   returned only on the caller's own entry; other referrers expose coarse location
          #   only.
          #
          #   @return [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User, nil]
          required :user, -> { WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User }, nil?: true

          # @!method initialize(first_referral_started_at:, rank:, total_earnings_usd:, total_volume_usd:, user:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me} for more details.
          #
          #   The caller's own standing; null when the caller has no referral earnings.
          #
          #   @param first_referral_started_at [Time] When the referrer's earliest business referral became active.
          #
          #   @param rank [Integer] 1-based leaderboard position.
          #
          #   @param total_earnings_usd [String] The referrer's pending + completed earnings across all referred businesses, in U
          #
          #   @param total_volume_usd [String] Credited GMV across all the referrer's referred businesses, in USD.
          #
          #   @param user [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User, nil] The ranked referrer. Identity fields (id, name, username, profile_picture) are r

          # @see WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me#user
          class User < WhopSDK::Internal::Type::BaseModel
            # @!attribute city
            #   The city where the referrer is located, derived from their IP address. Null if
            #   location sharing is disabled.
            #
            #   @return [String, nil]
            required :city, String, nil?: true

            # @!attribute country
            #   The country where the referrer is located, derived from their IP address. Null
            #   if location sharing is disabled.
            #
            #   @return [String, nil]
            required :country, String, nil?: true

            # @!attribute id
            #   User ID, prefixed `user_`. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute name
            #   The user's display name. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute profile_picture
            #   The user's profile picture. Present only on the caller's own entry.
            #
            #   @return [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture, nil]
            optional :profile_picture,
                     -> { WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture }

            # @!attribute username
            #   The user's unique username. Present only on the caller's own entry.
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(city:, country:, id: nil, name: nil, profile_picture: nil, username: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User} for more
            #   details.
            #
            #   The ranked referrer. Identity fields (id, name, username, profile_picture) are
            #   returned only on the caller's own entry; other referrers expose coarse location
            #   only.
            #
            #   @param city [String, nil] The city where the referrer is located, derived from their IP address. Null if l
            #
            #   @param country [String, nil] The country where the referrer is located, derived from their IP address. Null i
            #
            #   @param id [String] User ID, prefixed `user_`. Present only on the caller's own entry.
            #
            #   @param name [String, nil] The user's display name. Present only on the caller's own entry.
            #
            #   @param profile_picture [WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture] The user's profile picture. Present only on the caller's own entry.
            #
            #   @param username [String] The user's unique username. Present only on the caller's own entry.

            # @see WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User#profile_picture
            class ProfilePicture < WhopSDK::Internal::Type::BaseModel
              # @!attribute url
              #   The user's profile picture URL.
              #
              #   @return [String]
              required :url, String

              # @!method initialize(url:)
              #   The user's profile picture. Present only on the caller's own entry.
              #
              #   @param url [String] The user's profile picture URL.
            end
          end
        end
      end
    end
  end
end
