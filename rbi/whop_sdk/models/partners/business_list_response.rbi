# typed: strong

module WhopSDK
  module Models
    module Partners
      class BusinessListResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Partners::BusinessListResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # Partner business ID.
        sig { returns(String) }
        attr_accessor :id

        # Referred account.
        sig do
          returns(
            T.nilable(WhopSDK::Models::Partners::BusinessListResponse::Account)
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::Account::OrHash
              )
          ).void
        end
        attr_writer :account

        # When the partner business was created.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd)
        end
        attr_reader :earnings_usd

        sig do
          params(
            earnings_usd:
              WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd::OrHash
          ).void
        end
        attr_writer :earnings_usd

        # The partner who referred the business owner onto Whop (first tier). Null if
        # there is no active first-tier partner.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner
            )
          )
        end
        attr_reader :first_tier_partner

        sig do
          params(
            first_tier_partner:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::OrHash
              )
          ).void
        end
        attr_writer :first_tier_partner

        # Which tier the caller earns on for this business: `first` (they referred the
        # owner) or `second` (they referred the first-tier partner).
        sig do
          returns(
            WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::TaggedSymbol
          )
        end
        attr_accessor :my_partner_tier

        sig do
          returns(
            WhopSDK::Models::Partners::BusinessListResponse::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # The owner of the referred business.
        sig do
          returns(
            T.nilable(WhopSDK::Models::Partners::BusinessListResponse::Owner)
          )
        end
        attr_reader :owner

        sig do
          params(
            owner:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::Owner::OrHash
              )
          ).void
        end
        attr_writer :owner

        # Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier
        # referrals earn a flat 0.1.
        sig { returns(Float) }
        attr_accessor :payout_percentage

        # When the referral expires.
        sig { returns(T.nilable(Time)) }
        attr_accessor :referral_expires_at

        # When the referral became active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :referral_started_at

        # Current referral status.
        sig do
          returns(
            WhopSDK::Models::Partners::BusinessListResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd)
        end
        attr_reader :volume_usd

        sig do
          params(
            volume_usd:
              WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd::OrHash
          ).void
        end
        attr_writer :volume_usd

        sig do
          params(
            id: String,
            account:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::Account::OrHash
              ),
            created_at: Time,
            earnings_usd:
              WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd::OrHash,
            first_tier_partner:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::OrHash
              ),
            my_partner_tier:
              WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::OrSymbol,
            object:
              WhopSDK::Models::Partners::BusinessListResponse::Object::OrSymbol,
            owner:
              T.nilable(
                WhopSDK::Models::Partners::BusinessListResponse::Owner::OrHash
              ),
            payout_percentage: Float,
            referral_expires_at: T.nilable(Time),
            referral_started_at: T.nilable(Time),
            status:
              WhopSDK::Models::Partners::BusinessListResponse::Status::OrSymbol,
            volume_usd:
              WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Partner business ID.
          id:,
          # Referred account.
          account:,
          # When the partner business was created.
          created_at:,
          earnings_usd:,
          # The partner who referred the business owner onto Whop (first tier). Null if
          # there is no active first-tier partner.
          first_tier_partner:,
          # Which tier the caller earns on for this business: `first` (they referred the
          # owner) or `second` (they referred the first-tier partner).
          my_partner_tier:,
          object:,
          # The owner of the referred business.
          owner:,
          # Referrer's share of Whop gross profit, as a fraction (0.3 = 30%). Second-tier
          # referrals earn a flat 0.1.
          payout_percentage:,
          # When the referral expires.
          referral_expires_at:,
          # When the referral became active.
          referral_started_at:,
          # Current referral status.
          status:,
          volume_usd:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account:
                T.nilable(
                  WhopSDK::Models::Partners::BusinessListResponse::Account
                ),
              created_at: Time,
              earnings_usd:
                WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd,
              first_tier_partner:
                T.nilable(
                  WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner
                ),
              my_partner_tier:
                WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::TaggedSymbol,
              object:
                WhopSDK::Models::Partners::BusinessListResponse::Object::TaggedSymbol,
              owner:
                T.nilable(
                  WhopSDK::Models::Partners::BusinessListResponse::Owner
                ),
              payout_percentage: Float,
              referral_expires_at: T.nilable(Time),
              referral_started_at: T.nilable(Time),
              status:
                WhopSDK::Models::Partners::BusinessListResponse::Status::TaggedSymbol,
              volume_usd:
                WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd
            }
          )
        end
        def to_hash
        end

        class Account < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::BusinessListResponse::Account,
                WhopSDK::Internal::AnyHash
              )
            end

          # Referred account ID.
          sig { returns(String) }
          attr_accessor :id

          # Referred account logo URL.
          sig { returns(T.nilable(String)) }
          attr_accessor :logo_url

          # Referred account route.
          sig { returns(String) }
          attr_accessor :route

          # Referred account display name.
          sig { returns(String) }
          attr_accessor :title

          # Referred account.
          sig do
            params(
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Referred account ID.
            id:,
            # Referred account logo URL.
            logo_url:,
            # Referred account route.
            route:,
            # Referred account display name.
            title:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                logo_url: T.nilable(String),
                route: String,
                title: String
              }
            )
          end
          def to_hash
          end
        end

        class EarningsUsd < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd,
                WhopSDK::Internal::AnyHash
              )
            end

          # Commission already paid out, in USD.
          sig { returns(String) }
          attr_accessor :completed

          # Commission scheduled but not yet paid, in USD.
          sig { returns(String) }
          attr_accessor :pending

          # Pending + completed commission, in USD.
          sig { returns(String) }
          attr_accessor :total

          sig do
            params(completed: String, pending: String, total: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Commission already paid out, in USD.
            completed:,
            # Commission scheduled but not yet paid, in USD.
            pending:,
            # Pending + completed commission, in USD.
            total:
          )
          end

          sig do
            override.returns(
              { completed: String, pending: String, total: String }
            )
          end
          def to_hash
          end
        end

        class FirstTierPartner < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user's profile picture.
          sig do
            returns(
              WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # The user's unique username.
          sig { returns(String) }
          attr_accessor :username

          # The partner who referred the business owner onto Whop (first tier). Null if
          # there is no active first-tier partner.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # The user's display name.
            name:,
            # The user's profile picture.
            profile_picture:,
            # The user's unique username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture,
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
                  WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The user's profile picture URL.
            sig { returns(String) }
            attr_accessor :url

            # The user's profile picture.
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

        # Which tier the caller earns on for this business: `first` (they referred the
        # owner) or `second` (they referred the first-tier partner).
        module MyPartnerTier
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST =
            T.let(
              :first,
              WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::TaggedSymbol
            )
          SECOND =
            T.let(
              :second,
              WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Partners::BusinessListResponse::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PARTNER_BUSINESS =
            T.let(
              :partner_business,
              WhopSDK::Models::Partners::BusinessListResponse::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Partners::BusinessListResponse::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Owner < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::BusinessListResponse::Owner,
                WhopSDK::Internal::AnyHash
              )
            end

          # User ID, prefixed `user_`.
          sig { returns(String) }
          attr_accessor :id

          # The user's display name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The user's profile picture.
          sig do
            returns(
              WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture
            )
          end
          attr_reader :profile_picture

          sig do
            params(
              profile_picture:
                WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture::OrHash
            ).void
          end
          attr_writer :profile_picture

          # The user's unique username.
          sig { returns(String) }
          attr_accessor :username

          # The owner of the referred business.
          sig do
            params(
              id: String,
              name: T.nilable(String),
              profile_picture:
                WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture::OrHash,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # User ID, prefixed `user_`.
            id:,
            # The user's display name.
            name:,
            # The user's profile picture.
            profile_picture:,
            # The user's unique username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: T.nilable(String),
                profile_picture:
                  WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture,
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
                  WhopSDK::Models::Partners::BusinessListResponse::Owner::ProfilePicture,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The user's profile picture URL.
            sig { returns(String) }
            attr_accessor :url

            # The user's profile picture.
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

        # Current referral status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::Partners::BusinessListResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::Partners::BusinessListResponse::Status::TaggedSymbol
            )
          REMOVED =
            T.let(
              :removed,
              WhopSDK::Models::Partners::BusinessListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::Partners::BusinessListResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class VolumeUsd < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd,
                WhopSDK::Internal::AnyHash
              )
            end

          # Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
          # USD.
          sig { returns(String) }
          attr_accessor :attributed

          # GMV awaiting settlement (commission not yet computed), in USD.
          sig { returns(String) }
          attr_accessor :awaiting_settlement

          # GMV of pending + completed payments, in USD.
          sig { returns(String) }
          attr_accessor :settled

          sig do
            params(
              attributed: String,
              awaiting_settlement: String,
              settled: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Credited GMV (awaiting_settlement + settled); excludes canceled and reversed, in
            # USD.
            attributed:,
            # GMV awaiting settlement (commission not yet computed), in USD.
            awaiting_settlement:,
            # GMV of pending + completed payments, in USD.
            settled:
          )
          end

          sig do
            override.returns(
              {
                attributed: String,
                awaiting_settlement: String,
                settled: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
