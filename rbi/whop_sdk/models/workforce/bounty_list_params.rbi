# typed: strong

module WhopSDK
  module Models
    module Workforce
      class BountyListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Workforce::BountyListParams,
              WhopSDK::Internal::AnyHash
            )
          end

        # Scope the list to this account (`biz_` tag). Requires read access to the
        # account; account API keys may pass their own account or a connected account.
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        # Cursor to paginate forwards from.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Cursor to paginate backwards from.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Only bounties created after this ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_reader :created_after

        sig { params(created_after: String).void }
        attr_writer :created_after

        # Only bounties created before this ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_reader :created_before

        sig { params(created_before: String).void }
        attr_writer :created_before

        # Sort direction.
        sig do
          returns(
            T.nilable(WhopSDK::Workforce::BountyListParams::Direction::OrSymbol)
          )
        end
        attr_reader :direction

        sig do
          params(
            direction: WhopSDK::Workforce::BountyListParams::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # Number of bounties to return from the start of the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :first

        sig { params(first: Integer).void }
        attr_writer :first

        # Number of bounties to return from the end of the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :last

        sig { params(last: Integer).void }
        attr_writer :last

        # Sort field.
        sig do
          returns(
            T.nilable(WhopSDK::Workforce::BountyListParams::Order::OrSymbol)
          )
        end
        attr_reader :order

        sig do
          params(
            order: WhopSDK::Workforce::BountyListParams::Order::OrSymbol
          ).void
        end
        attr_writer :order

        # Substring match on the bounty title or ID.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        # Filter by lifecycle state.
        sig do
          returns(
            T.nilable(WhopSDK::Workforce::BountyListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: WhopSDK::Workforce::BountyListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # List the bounties this user participated in (`user_` tag). Must be the
        # authenticated user.
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction:
              WhopSDK::Workforce::BountyListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::Workforce::BountyListParams::Order::OrSymbol,
            query: String,
            status: WhopSDK::Workforce::BountyListParams::Status::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Scope the list to this account (`biz_` tag). Requires read access to the
          # account; account API keys may pass their own account or a connected account.
          account_id: nil,
          # Cursor to paginate forwards from.
          after: nil,
          # Cursor to paginate backwards from.
          before: nil,
          # Only bounties created after this ISO 8601 timestamp.
          created_after: nil,
          # Only bounties created before this ISO 8601 timestamp.
          created_before: nil,
          # Sort direction.
          direction: nil,
          # Number of bounties to return from the start of the window.
          first: nil,
          # Number of bounties to return from the end of the window.
          last: nil,
          # Sort field.
          order: nil,
          # Substring match on the bounty title or ID.
          query: nil,
          # Filter by lifecycle state.
          status: nil,
          # List the bounties this user participated in (`user_` tag). Must be the
          # authenticated user.
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              after: String,
              before: String,
              created_after: String,
              created_before: String,
              direction:
                WhopSDK::Workforce::BountyListParams::Direction::OrSymbol,
              first: Integer,
              last: Integer,
              order: WhopSDK::Workforce::BountyListParams::Order::OrSymbol,
              query: String,
              status: WhopSDK::Workforce::BountyListParams::Status::OrSymbol,
              user_id: String,
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
              T.all(Symbol, WhopSDK::Workforce::BountyListParams::Direction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              WhopSDK::Workforce::BountyListParams::Direction::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              WhopSDK::Workforce::BountyListParams::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::BountyListParams::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort field.
        module Order
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Workforce::BountyListParams::Order)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              WhopSDK::Workforce::BountyListParams::Order::TaggedSymbol
            )
          GROSS_PAID_OUT_AMOUNT =
            T.let(
              :gross_paid_out_amount,
              WhopSDK::Workforce::BountyListParams::Order::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::BountyListParams::Order::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by lifecycle state.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Workforce::BountyListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULED =
            T.let(
              :scheduled,
              WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
            )
          OPEN =
            T.let(
              :open,
              WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :closed,
              WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Workforce::BountyListParams::Status::TaggedSymbol
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
