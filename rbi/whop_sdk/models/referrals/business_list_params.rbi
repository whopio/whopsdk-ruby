# typed: strong

module WhopSDK
  module Models
    module Referrals
      class BusinessListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Referrals::BusinessListParams,
              WhopSDK::Internal::AnyHash
            )
          end

        # Cursor to fetch the page after (from page_info.end_cursor).
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Cursor to fetch the page before (from page_info.start_cursor).
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Only return business referrals created after this timestamp.
        sig { returns(T.nilable(String)) }
        attr_reader :created_after

        sig { params(created_after: String).void }
        attr_writer :created_after

        # Only return business referrals created before this timestamp.
        sig { returns(T.nilable(String)) }
        attr_reader :created_before

        sig { params(created_before: String).void }
        attr_writer :created_before

        # Sort direction.
        sig do
          returns(
            T.nilable(
              WhopSDK::Referrals::BusinessListParams::Direction::OrSymbol
            )
          )
        end
        attr_reader :direction

        sig do
          params(
            direction:
              WhopSDK::Referrals::BusinessListParams::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # Number of business referrals to return from the start of the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :first

        sig { params(first: Integer).void }
        attr_writer :first

        # When true, only businesses with pending or completed earnings paid to the
        # caller.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_earnings

        sig { params(has_earnings: T::Boolean).void }
        attr_writer :has_earnings

        # Number of business referrals to return from the end of the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :last

        sig { params(last: Integer).void }
        attr_writer :last

        # The field to sort business referrals by.
        sig do
          returns(
            T.nilable(WhopSDK::Referrals::BusinessListParams::Order::OrSymbol)
          )
        end
        attr_reader :order

        sig do
          params(
            order: WhopSDK::Referrals::BusinessListParams::Order::OrSymbol
          ).void
        end
        attr_writer :order

        # Filter to referrals attributed to this user. For first-tier referrals, this is
        # the referred account owner; for second-tier referrals, this is the partner you
        # recruited.
        sig { returns(T.nilable(String)) }
        attr_reader :referred_user_id

        sig { params(referred_user_id: String).void }
        attr_writer :referred_user_id

        # Filter by the referred user's exact username. Ignored when `referred_user_id` is
        # present.
        sig { returns(T.nilable(String)) }
        attr_reader :referred_username

        sig { params(referred_username: String).void }
        attr_writer :referred_username

        # Filter by referral status.
        sig do
          returns(
            T.nilable(WhopSDK::Referrals::BusinessListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: WhopSDK::Referrals::BusinessListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter to only first-tier referrals or only second-tier referrals.
        sig do
          returns(
            T.nilable(WhopSDK::Referrals::BusinessListParams::Tier::OrSymbol)
          )
        end
        attr_reader :tier

        sig do
          params(
            tier: WhopSDK::Referrals::BusinessListParams::Tier::OrSymbol
          ).void
        end
        attr_writer :tier

        sig do
          params(
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction:
              WhopSDK::Referrals::BusinessListParams::Direction::OrSymbol,
            first: Integer,
            has_earnings: T::Boolean,
            last: Integer,
            order: WhopSDK::Referrals::BusinessListParams::Order::OrSymbol,
            referred_user_id: String,
            referred_username: String,
            status: WhopSDK::Referrals::BusinessListParams::Status::OrSymbol,
            tier: WhopSDK::Referrals::BusinessListParams::Tier::OrSymbol,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor to fetch the page after (from page_info.end_cursor).
          after: nil,
          # Cursor to fetch the page before (from page_info.start_cursor).
          before: nil,
          # Only return business referrals created after this timestamp.
          created_after: nil,
          # Only return business referrals created before this timestamp.
          created_before: nil,
          # Sort direction.
          direction: nil,
          # Number of business referrals to return from the start of the window.
          first: nil,
          # When true, only businesses with pending or completed earnings paid to the
          # caller.
          has_earnings: nil,
          # Number of business referrals to return from the end of the window.
          last: nil,
          # The field to sort business referrals by.
          order: nil,
          # Filter to referrals attributed to this user. For first-tier referrals, this is
          # the referred account owner; for second-tier referrals, this is the partner you
          # recruited.
          referred_user_id: nil,
          # Filter by the referred user's exact username. Ignored when `referred_user_id` is
          # present.
          referred_username: nil,
          # Filter by referral status.
          status: nil,
          # Filter to only first-tier referrals or only second-tier referrals.
          tier: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              created_after: String,
              created_before: String,
              direction:
                WhopSDK::Referrals::BusinessListParams::Direction::OrSymbol,
              first: Integer,
              has_earnings: T::Boolean,
              last: Integer,
              order: WhopSDK::Referrals::BusinessListParams::Order::OrSymbol,
              referred_user_id: String,
              referred_username: String,
              status: WhopSDK::Referrals::BusinessListParams::Status::OrSymbol,
              tier: WhopSDK::Referrals::BusinessListParams::Tier::OrSymbol,
              request_options: WhopSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort direction.
        module Direction
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Referrals::BusinessListParams::Direction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              WhopSDK::Referrals::BusinessListParams::Direction::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              WhopSDK::Referrals::BusinessListParams::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Referrals::BusinessListParams::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The field to sort business referrals by.
        module Order
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Referrals::BusinessListParams::Order)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )
          REFERRAL_STARTED_AT =
            T.let(
              :referral_started_at,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )
          REFERRAL_EXPIRES_AT =
            T.let(
              :referral_expires_at,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )
          PAYOUT_PERCENTAGE =
            T.let(
              :payout_percentage,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )
          VOLUME_USD =
            T.let(
              :volume_usd,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )
          EARNINGS_USD =
            T.let(
              :earnings_usd,
              WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Referrals::BusinessListParams::Order::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by referral status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Referrals::BusinessListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Referrals::BusinessListParams::Status::TaggedSymbol
            )
          REMOVED =
            T.let(
              :removed,
              WhopSDK::Referrals::BusinessListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Referrals::BusinessListParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter to only first-tier referrals or only second-tier referrals.
        module Tier
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Referrals::BusinessListParams::Tier)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST =
            T.let(
              :first,
              WhopSDK::Referrals::BusinessListParams::Tier::TaggedSymbol
            )
          SECOND =
            T.let(
              :second,
              WhopSDK::Referrals::BusinessListParams::Tier::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Referrals::BusinessListParams::Tier::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
