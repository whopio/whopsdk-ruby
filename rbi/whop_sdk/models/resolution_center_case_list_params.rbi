# typed: strong

module WhopSDK
  module Models
    class ResolutionCenterCaseListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ResolutionCenterCaseListParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # Only cases filed against this account (`biz_` tag). With read access to the
      # account this lists its whole queue; without, only the cases you opened against
      # it.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns cases after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns cases before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only cases created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only cases created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction.
      sig do
        returns(
          T.nilable(
            WhopSDK::ResolutionCenterCaseListParams::Direction::OrSymbol
          )
        )
      end
      attr_reader :direction

      sig do
        params(
          direction:
            WhopSDK::ResolutionCenterCaseListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The number of cases to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of cases to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort cases by.
      sig do
        returns(
          T.nilable(WhopSDK::ResolutionCenterCaseListParams::Order::OrSymbol)
        )
      end
      attr_reader :order

      sig do
        params(
          order: WhopSDK::ResolutionCenterCaseListParams::Order::OrSymbol
        ).void
      end
      attr_writer :order

      # Only closed cases that ended these ways. Repeat the parameter to pass several.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Outcome::OrSymbol]
          )
        )
      end
      attr_reader :outcome

      sig do
        params(
          outcome:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Outcome::OrSymbol]
        ).void
      end
      attr_writer :outcome

      # Only cases opened for these reasons. Repeat the parameter to pass several.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Reason::OrSymbol]
          )
        )
      end
      attr_reader :reason

      sig do
        params(
          reason:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Reason::OrSymbol]
        ).void
      end
      attr_writer :reason

      # Only cases in these statuses. Repeat the parameter to pass several — one
      # paginated list covers all of them.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Status::OrSymbol]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      # Only cases opened by this customer — a `user_` tag, or `me` for the calling
      # user. It narrows what you can already read, so `me` lists the cases you opened
      # without the ones on accounts you are a team member of.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction:
            WhopSDK::ResolutionCenterCaseListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::ResolutionCenterCaseListParams::Order::OrSymbol,
          outcome:
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Outcome::OrSymbol
            ],
          reason:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Reason::OrSymbol],
          status:
            T::Array[WhopSDK::ResolutionCenterCaseListParams::Status::OrSymbol],
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only cases filed against this account (`biz_` tag). With read access to the
        # account this lists its whole queue; without, only the cases you opened against
        # it.
        account_id: nil,
        # A cursor; returns cases after this position.
        after: nil,
        # A cursor; returns cases before this position.
        before: nil,
        # Only cases created after this ISO 8601 timestamp.
        created_after: nil,
        # Only cases created before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # The number of cases to return (default 20, max 100).
        first: nil,
        # The number of cases to return from the end of the range.
        last: nil,
        # The field to sort cases by.
        order: nil,
        # Only closed cases that ended these ways. Repeat the parameter to pass several.
        outcome: nil,
        # Only cases opened for these reasons. Repeat the parameter to pass several.
        reason: nil,
        # Only cases in these statuses. Repeat the parameter to pass several — one
        # paginated list covers all of them.
        status: nil,
        # Only cases opened by this customer — a `user_` tag, or `me` for the calling
        # user. It narrows what you can already read, so `me` lists the cases you opened
        # without the ones on accounts you are a team member of.
        user_id: nil,
        api_version_date: nil,
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
              WhopSDK::ResolutionCenterCaseListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::ResolutionCenterCaseListParams::Order::OrSymbol,
            outcome:
              T::Array[
                WhopSDK::ResolutionCenterCaseListParams::Outcome::OrSymbol
              ],
            reason:
              T::Array[
                WhopSDK::ResolutionCenterCaseListParams::Reason::OrSymbol
              ],
            status:
              T::Array[
                WhopSDK::ResolutionCenterCaseListParams::Status::OrSymbol
              ],
            user_id: String,
            api_version_date: String,
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
            T.all(Symbol, WhopSDK::ResolutionCenterCaseListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            WhopSDK::ResolutionCenterCaseListParams::Direction::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            WhopSDK::ResolutionCenterCaseListParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The field to sort cases by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ResolutionCenterCaseListParams::Order)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::ResolutionCenterCaseListParams::Order::TaggedSymbol
          )
        RESPONSE_DUE_AT =
          T.let(
            :response_due_at,
            WhopSDK::ResolutionCenterCaseListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Order::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Outcome
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ResolutionCenterCaseListParams::Outcome)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_WON =
          T.let(
            :customer_won,
            WhopSDK::ResolutionCenterCaseListParams::Outcome::TaggedSymbol
          )
        MERCHANT_WON =
          T.let(
            :merchant_won,
            WhopSDK::ResolutionCenterCaseListParams::Outcome::TaggedSymbol
          )
        WITHDRAWN =
          T.let(
            :withdrawn,
            WhopSDK::ResolutionCenterCaseListParams::Outcome::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Outcome::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Reason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ResolutionCenterCaseListParams::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FRAUDULENT =
          T.let(
            :fraudulent,
            WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
          )
        PRODUCT_NOT_RECEIVED =
          T.let(
            :product_not_received,
            WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
          )
        NOT_AS_DESCRIBED =
          T.let(
            :not_as_described,
            WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
          )
        PRODUCT_UNACCEPTABLE =
          T.let(
            :product_unacceptable,
            WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
          )
        SUBSCRIPTION_CANCELED =
          T.let(
            :subscription_canceled,
            WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Reason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::ResolutionCenterCaseListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWAITING_MERCHANT =
          T.let(
            :awaiting_merchant,
            WhopSDK::ResolutionCenterCaseListParams::Status::TaggedSymbol
          )
        AWAITING_CUSTOMER =
          T.let(
            :awaiting_customer,
            WhopSDK::ResolutionCenterCaseListParams::Status::TaggedSymbol
          )
        UNDER_REVIEW =
          T.let(
            :under_review,
            WhopSDK::ResolutionCenterCaseListParams::Status::TaggedSymbol
          )
        CLOSED =
          T.let(
            :closed,
            WhopSDK::ResolutionCenterCaseListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::ResolutionCenterCaseListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
