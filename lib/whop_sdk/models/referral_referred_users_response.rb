# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Referrals#referred_users
    class ReferralReferredUsersResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::ReferralReferredUsersResponse::Data>]
      required :data,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReferralReferredUsersResponse::Data] }

      # @!attribute page_info
      #
      #   @return [WhopSDK::Models::ReferralReferredUsersResponse::PageInfo]
      required :page_info, -> { WhopSDK::Models::ReferralReferredUsersResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<WhopSDK::Models::ReferralReferredUsersResponse::Data>]
      #   @param page_info [WhopSDK::Models::ReferralReferredUsersResponse::PageInfo]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute total_earnings_usd
        #
        #   @return [String]
        required :total_earnings_usd, String

        # @!attribute total_volume_usd
        #
        #   @return [String]
        required :total_volume_usd, String

        # @!attribute user
        #
        #   @return [WhopSDK::Models::ReferralReferredUsersResponse::Data::User]
        required :user, -> { WhopSDK::Models::ReferralReferredUsersResponse::Data::User }

        # @!method initialize(total_earnings_usd:, total_volume_usd:, user:)
        #   @param total_earnings_usd [String]
        #   @param total_volume_usd [String]
        #   @param user [WhopSDK::Models::ReferralReferredUsersResponse::Data::User]

        # @see WhopSDK::Models::ReferralReferredUsersResponse::Data#user
        class User < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute username
          #
          #   @return [String]
          required :username, String

          # @!attribute city
          #
          #   @return [String, nil]
          optional :city, String, nil?: true

          # @!attribute country
          #
          #   @return [String, nil]
          optional :country, String, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute profile_picture
          #
          #   @return [WhopSDK::Models::ReferralReferredUsersResponse::Data::User::ProfilePicture, nil]
          optional :profile_picture,
                   -> { WhopSDK::Models::ReferralReferredUsersResponse::Data::User::ProfilePicture }

          # @!method initialize(id:, username:, city: nil, country: nil, name: nil, profile_picture: nil)
          #   @param id [String]
          #   @param username [String]
          #   @param city [String, nil]
          #   @param country [String, nil]
          #   @param name [String, nil]
          #   @param profile_picture [WhopSDK::Models::ReferralReferredUsersResponse::Data::User::ProfilePicture]

          # @see WhopSDK::Models::ReferralReferredUsersResponse::Data::User#profile_picture
          class ProfilePicture < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String, nil?: true

            # @!method initialize(url: nil)
            #   @param url [String, nil]
          end
        end
      end

      # @see WhopSDK::Models::ReferralReferredUsersResponse#page_info
      class PageInfo < WhopSDK::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, WhopSDK::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, WhopSDK::Internal::Type::Boolean

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
