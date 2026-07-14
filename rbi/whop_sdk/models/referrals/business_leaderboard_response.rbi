# typed: strong

module WhopSDK
  module Models
    module Referrals
      class BusinessLeaderboardResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Referrals::BusinessLeaderboardResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # The top referrers by total earnings, best first.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader
            ]
          )
        end
        attr_accessor :leaders

        # The caller's own standing; null when the caller has no referral earnings.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me
            )
          )
        end
        attr_reader :me

        sig do
          params(
            me:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::OrHash
              )
          ).void
        end
        attr_writer :me

        sig do
          params(
            leaders:
              T::Array[
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::OrHash
              ],
            me:
              T.nilable(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The top referrers by total earnings, best first.
          leaders:,
          # The caller's own standing; null when the caller has no referral earnings.
          me:
        )
        end

        sig do
          override.returns(
            {
              leaders:
                T::Array[
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader
                ],
              me:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me
                )
            }
          )
        end
        def to_hash
        end

        class Leader < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader,
                WhopSDK::Internal::AnyHash
              )
            end

          # When the referrer's earliest business referral became active.
          sig { returns(Time) }
          attr_accessor :first_referral_started_at

          # 1-based leaderboard position.
          sig { returns(Integer) }
          attr_accessor :rank

          # The referrer's pending + completed earnings across all referred businesses, in
          # USD.
          sig { returns(String) }
          attr_accessor :total_earnings_usd

          # Credited GMV across all the referrer's referred businesses, in USD.
          sig { returns(String) }
          attr_accessor :total_volume_usd

          # The ranked referrer. Identity fields (id, name, username, profile_picture) are
          # returned only on the caller's own entry; other referrers expose coarse location
          # only.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::OrHash
                )
            ).void
          end
          attr_writer :user

          sig do
            params(
              first_referral_started_at: Time,
              rank: Integer,
              total_earnings_usd: String,
              total_volume_usd: String,
              user:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # When the referrer's earliest business referral became active.
            first_referral_started_at:,
            # 1-based leaderboard position.
            rank:,
            # The referrer's pending + completed earnings across all referred businesses, in
            # USD.
            total_earnings_usd:,
            # Credited GMV across all the referrer's referred businesses, in USD.
            total_volume_usd:,
            # The ranked referrer. Identity fields (id, name, username, profile_picture) are
            # returned only on the caller's own entry; other referrers expose coarse location
            # only.
            user:
          )
          end

          sig do
            override.returns(
              {
                first_referral_started_at: Time,
                rank: Integer,
                total_earnings_usd: String,
                total_volume_usd: String,
                user:
                  T.nilable(
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User
                  )
              }
            )
          end
          def to_hash
          end

          class User < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The city where the referrer is located, derived from their IP address. Null if
            # location sharing is disabled.
            sig { returns(T.nilable(String)) }
            attr_accessor :city

            # The country where the referrer is located, derived from their IP address. Null
            # if location sharing is disabled.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # User ID, prefixed `user_`. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The user's display name. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The user's profile picture. Present only on the caller's own entry.
            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture
                )
              )
            end
            attr_reader :profile_picture

            sig do
              params(
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture::OrHash
              ).void
            end
            attr_writer :profile_picture

            # The user's unique username. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            # The ranked referrer. Identity fields (id, name, username, profile_picture) are
            # returned only on the caller's own entry; other referrers expose coarse location
            # only.
            sig do
              params(
                city: T.nilable(String),
                country: T.nilable(String),
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture::OrHash,
                username: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The city where the referrer is located, derived from their IP address. Null if
              # location sharing is disabled.
              city:,
              # The country where the referrer is located, derived from their IP address. Null
              # if location sharing is disabled.
              country:,
              # User ID, prefixed `user_`. Present only on the caller's own entry.
              id: nil,
              # The user's display name. Present only on the caller's own entry.
              name: nil,
              # The user's profile picture. Present only on the caller's own entry.
              profile_picture: nil,
              # The user's unique username. Present only on the caller's own entry.
              username: nil
            )
            end

            sig do
              override.returns(
                {
                  city: T.nilable(String),
                  country: T.nilable(String),
                  id: String,
                  name: T.nilable(String),
                  profile_picture:
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture,
                  username: String
                }
              )
            end
            def to_hash
            end

            class ProfilePicture < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader::User::ProfilePicture,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The user's profile picture URL.
              sig { returns(String) }
              attr_accessor :url

              # The user's profile picture. Present only on the caller's own entry.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(
                # The user's profile picture URL.
                url:
              )
              end

              sig { override.returns({ url: String }) }
              def to_hash
              end
            end
          end
        end

        class Me < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me,
                WhopSDK::Internal::AnyHash
              )
            end

          # When the referrer's earliest business referral became active.
          sig { returns(Time) }
          attr_accessor :first_referral_started_at

          # 1-based leaderboard position.
          sig { returns(Integer) }
          attr_accessor :rank

          # The referrer's pending + completed earnings across all referred businesses, in
          # USD.
          sig { returns(String) }
          attr_accessor :total_earnings_usd

          # Credited GMV across all the referrer's referred businesses, in USD.
          sig { returns(String) }
          attr_accessor :total_volume_usd

          # The ranked referrer. Identity fields (id, name, username, profile_picture) are
          # returned only on the caller's own entry; other referrers expose coarse location
          # only.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::OrHash
                )
            ).void
          end
          attr_writer :user

          # The caller's own standing; null when the caller has no referral earnings.
          sig do
            params(
              first_referral_started_at: Time,
              rank: Integer,
              total_earnings_usd: String,
              total_volume_usd: String,
              user:
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # When the referrer's earliest business referral became active.
            first_referral_started_at:,
            # 1-based leaderboard position.
            rank:,
            # The referrer's pending + completed earnings across all referred businesses, in
            # USD.
            total_earnings_usd:,
            # Credited GMV across all the referrer's referred businesses, in USD.
            total_volume_usd:,
            # The ranked referrer. Identity fields (id, name, username, profile_picture) are
            # returned only on the caller's own entry; other referrers expose coarse location
            # only.
            user:
          )
          end

          sig do
            override.returns(
              {
                first_referral_started_at: Time,
                rank: Integer,
                total_earnings_usd: String,
                total_volume_usd: String,
                user:
                  T.nilable(
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User
                  )
              }
            )
          end
          def to_hash
          end

          class User < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The city where the referrer is located, derived from their IP address. Null if
            # location sharing is disabled.
            sig { returns(T.nilable(String)) }
            attr_accessor :city

            # The country where the referrer is located, derived from their IP address. Null
            # if location sharing is disabled.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # User ID, prefixed `user_`. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The user's display name. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The user's profile picture. Present only on the caller's own entry.
            sig do
              returns(
                T.nilable(
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture
                )
              )
            end
            attr_reader :profile_picture

            sig do
              params(
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture::OrHash
              ).void
            end
            attr_writer :profile_picture

            # The user's unique username. Present only on the caller's own entry.
            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            # The ranked referrer. Identity fields (id, name, username, profile_picture) are
            # returned only on the caller's own entry; other referrers expose coarse location
            # only.
            sig do
              params(
                city: T.nilable(String),
                country: T.nilable(String),
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture::OrHash,
                username: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The city where the referrer is located, derived from their IP address. Null if
              # location sharing is disabled.
              city:,
              # The country where the referrer is located, derived from their IP address. Null
              # if location sharing is disabled.
              country:,
              # User ID, prefixed `user_`. Present only on the caller's own entry.
              id: nil,
              # The user's display name. Present only on the caller's own entry.
              name: nil,
              # The user's profile picture. Present only on the caller's own entry.
              profile_picture: nil,
              # The user's unique username. Present only on the caller's own entry.
              username: nil
            )
            end

            sig do
              override.returns(
                {
                  city: T.nilable(String),
                  country: T.nilable(String),
                  id: String,
                  name: T.nilable(String),
                  profile_picture:
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture,
                  username: String
                }
              )
            end
            def to_hash
            end

            class ProfilePicture < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me::User::ProfilePicture,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The user's profile picture URL.
              sig { returns(String) }
              attr_accessor :url

              # The user's profile picture. Present only on the caller's own entry.
              sig { params(url: String).returns(T.attached_class) }
              def self.new(
                # The user's profile picture URL.
                url:
              )
              end

              sig { override.returns({ url: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
