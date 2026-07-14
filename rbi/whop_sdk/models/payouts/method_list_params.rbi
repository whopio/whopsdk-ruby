# typed: strong

module WhopSDK
  module Models
    module Payouts
      class MethodListParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Payouts::MethodListParams,
              WhopSDK::Internal::AnyHash
            )
          end

        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        # Cursor to fetch the page after (from page_info.end_cursor).
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Optional withdrawal amount in whole currency units, for example `250.00`. When
        # provided, each method includes a quote with the estimated fee, amount received,
        # and delivery date for that amount.
        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        # Cursor to fetch the page before (from page_info.start_cursor).
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Currency code of the amount, for example `usd`. Only meaningful with amount.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Number of payout methods to return from the start of the window. Capped at 25
        # when an amount is provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :first

        sig { params(first: Integer).void }
        attr_writer :first

        # When true, the response also carries available_destinations — payout rails the
        # account could add as a new payout method, with per-currency quotes when an
        # amount is provided.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_available

        sig { params(include_available: T::Boolean).void }
        attr_writer :include_available

        # Number of payout methods to return from the end of the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :last

        sig { params(last: Integer).void }
        attr_writer :last

        # Optional status filter. `created` means saved but unused, `active` means a
        # payout through it succeeded, `broken` means the last payout failed and the
        # method needs fixing.
        sig do
          returns(
            T.nilable(WhopSDK::Payouts::MethodListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: WhopSDK::Payouts::MethodListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # The owning user ID (a user\_ identifier). Provide this or account_id.
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            account_id: String,
            after: String,
            amount: Float,
            before: String,
            currency: String,
            first: Integer,
            include_available: T::Boolean,
            last: Integer,
            status: WhopSDK::Payouts::MethodListParams::Status::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The owning account ID (a biz\_ identifier). Provide this or user_id.
          account_id: nil,
          # Cursor to fetch the page after (from page_info.end_cursor).
          after: nil,
          # Optional withdrawal amount in whole currency units, for example `250.00`. When
          # provided, each method includes a quote with the estimated fee, amount received,
          # and delivery date for that amount.
          amount: nil,
          # Cursor to fetch the page before (from page_info.start_cursor).
          before: nil,
          # Currency code of the amount, for example `usd`. Only meaningful with amount.
          currency: nil,
          # Number of payout methods to return from the start of the window. Capped at 25
          # when an amount is provided.
          first: nil,
          # When true, the response also carries available_destinations — payout rails the
          # account could add as a new payout method, with per-currency quotes when an
          # amount is provided.
          include_available: nil,
          # Number of payout methods to return from the end of the window.
          last: nil,
          # Optional status filter. `created` means saved but unused, `active` means a
          # payout through it succeeded, `broken` means the last payout failed and the
          # method needs fixing.
          status: nil,
          # The owning user ID (a user\_ identifier). Provide this or account_id.
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              after: String,
              amount: Float,
              before: String,
              currency: String,
              first: Integer,
              include_available: T::Boolean,
              last: Integer,
              status: WhopSDK::Payouts::MethodListParams::Status::OrSymbol,
              user_id: String,
              request_options: WhopSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Optional status filter. `created` means saved but unused, `active` means a
        # payout through it succeeded, `broken` means the last payout failed and the
        # method needs fixing.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Payouts::MethodListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              WhopSDK::Payouts::MethodListParams::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              WhopSDK::Payouts::MethodListParams::Status::TaggedSymbol
            )
          BROKEN =
            T.let(
              :broken,
              WhopSDK::Payouts::MethodListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Payouts::MethodListParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
