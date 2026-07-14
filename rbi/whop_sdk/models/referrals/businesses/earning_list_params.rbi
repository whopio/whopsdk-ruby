# typed: strong

module WhopSDK
  module Models
    module Referrals
      module Businesses
        class EarningListParams < WhopSDK::Internal::Type::BaseModel
          extend WhopSDK::Internal::Type::RequestParameters::Converter
          include WhopSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Referrals::Businesses::EarningListParams,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # Only return earnings created after this timestamp.
          sig { returns(T.nilable(String)) }
          attr_reader :created_after

          sig { params(created_after: String).void }
          attr_writer :created_after

          # Only return earnings created before this timestamp.
          sig { returns(T.nilable(String)) }
          attr_reader :created_before

          sig { params(created_before: String).void }
          attr_writer :created_before

          # Sort direction.
          sig do
            returns(
              T.nilable(
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::OrSymbol
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::OrSymbol
            ).void
          end
          attr_writer :direction

          sig { returns(T.nilable(Integer)) }
          attr_reader :first

          sig { params(first: Integer).void }
          attr_writer :first

          sig { returns(T.nilable(Integer)) }
          attr_reader :last

          sig { params(last: Integer).void }
          attr_writer :last

          # The field to sort earnings by.
          sig do
            returns(
              T.nilable(
                WhopSDK::Referrals::Businesses::EarningListParams::Order::OrSymbol
              )
            )
          end
          attr_reader :order

          sig do
            params(
              order:
                WhopSDK::Referrals::Businesses::EarningListParams::Order::OrSymbol
            ).void
          end
          attr_writer :order

          # Filter by earning status.
          sig do
            returns(
              T.nilable(
                WhopSDK::Referrals::Businesses::EarningListParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                WhopSDK::Referrals::Businesses::EarningListParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              after: String,
              before: String,
              created_after: String,
              created_before: String,
              direction:
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::OrSymbol,
              first: Integer,
              last: Integer,
              order:
                WhopSDK::Referrals::Businesses::EarningListParams::Order::OrSymbol,
              status:
                WhopSDK::Referrals::Businesses::EarningListParams::Status::OrSymbol,
              request_options: WhopSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            after: nil,
            before: nil,
            # Only return earnings created after this timestamp.
            created_after: nil,
            # Only return earnings created before this timestamp.
            created_before: nil,
            # Sort direction.
            direction: nil,
            first: nil,
            last: nil,
            # The field to sort earnings by.
            order: nil,
            # Filter by earning status.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                after: String,
                before: String,
                created_after: String,
                created_before: String,
                direction:
                  WhopSDK::Referrals::Businesses::EarningListParams::Direction::OrSymbol,
                first: Integer,
                last: Integer,
                order:
                  WhopSDK::Referrals::Businesses::EarningListParams::Order::OrSymbol,
                status:
                  WhopSDK::Referrals::Businesses::EarningListParams::Status::OrSymbol,
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
                T.all(
                  Symbol,
                  WhopSDK::Referrals::Businesses::EarningListParams::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ASC =
              T.let(
                :asc,
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::TaggedSymbol
              )
            DESC =
              T.let(
                :desc,
                WhopSDK::Referrals::Businesses::EarningListParams::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Referrals::Businesses::EarningListParams::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The field to sort earnings by.
          module Order
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Referrals::Businesses::EarningListParams::Order
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT =
              T.let(
                :created_at,
                WhopSDK::Referrals::Businesses::EarningListParams::Order::TaggedSymbol
              )
            COMMISSION_AMOUNT =
              T.let(
                :commission_amount,
                WhopSDK::Referrals::Businesses::EarningListParams::Order::TaggedSymbol
              )
            TRANSACTION_AMOUNT =
              T.let(
                :transaction_amount,
                WhopSDK::Referrals::Businesses::EarningListParams::Order::TaggedSymbol
              )
            PAYOUT_AT =
              T.let(
                :payout_at,
                WhopSDK::Referrals::Businesses::EarningListParams::Order::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Referrals::Businesses::EarningListParams::Order::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter by earning status.
          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Referrals::Businesses::EarningListParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWAITING_SETTLEMENT =
              T.let(
                :awaiting_settlement,
                WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Referrals::Businesses::EarningListParams::Status::TaggedSymbol
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
end
