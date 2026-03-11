# typed: strong

module WhopSDK
  module Models
    class ResolutionCenterCaseRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the resolution.
      sig { returns(String) }
      attr_accessor :id

      # The company involved in this resolution case. Null if the company no longer
      # exists.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company
          )
        )
      end
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company::OrHash
            )
        ).void
      end
      attr_writer :company

      # The datetime the resolution was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether the customer has filed an appeal after the initial resolution decision.
      sig { returns(T::Boolean) }
      attr_accessor :customer_appealed

      # The list of actions currently available to the customer.
      sig do
        returns(
          T::Array[WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol]
        )
      end
      attr_accessor :customer_response_actions

      # The deadline by which the next response is required. Null if no deadline is
      # currently active. As a Unix timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      # The category of the dispute.
      sig { returns(WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol) }
      attr_accessor :issue

      # The membership record associated with the disputed payment. Null if the
      # membership no longer exists.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member
          )
        )
      end
      attr_reader :member

      sig do
        params(
          member:
            T.nilable(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member::OrHash
            )
        ).void
      end
      attr_writer :member

      # Whether the merchant has filed an appeal after the initial resolution decision.
      sig { returns(T::Boolean) }
      attr_accessor :merchant_appealed

      # The list of actions currently available to the merchant.
      sig do
        returns(
          T::Array[WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol]
        )
      end
      attr_accessor :merchant_response_actions

      # The payment record that is the subject of this resolution case.
      sig do
        returns(WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment)
      end
      attr_reader :payment

      sig do
        params(
          payment:
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment::OrHash
        ).void
      end
      attr_writer :payment

      # The list of actions currently available to the Whop platform for moderating this
      # resolution.
      sig do
        returns(
          T::Array[WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol]
        )
      end
      attr_accessor :platform_response_actions

      # The most recent 50 messages, actions, and status changes that have occurred
      # during this resolution case.
      sig do
        returns(
          T::Array[
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent
          ]
        )
      end
      attr_accessor :resolution_events

      # The current status of the resolution case, indicating which party needs to
      # respond or if the case is closed.
      sig { returns(WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol) }
      attr_accessor :status

      # The datetime the resolution was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The customer (buyer) who filed this resolution case.
      sig do
        returns(WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User)
      end
      attr_reader :user

      sig do
        params(
          user:
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A resolution center case is a dispute or support case between a user and a
      # company, tracking the issue, status, and outcome.
      sig do
        params(
          id: String,
          company:
            T.nilable(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company::OrHash
            ),
          created_at: Time,
          customer_appealed: T::Boolean,
          customer_response_actions:
            T::Array[WhopSDK::ResolutionCenterCaseCustomerResponse::OrSymbol],
          due_date: T.nilable(Time),
          issue: WhopSDK::ResolutionCenterCaseIssueType::OrSymbol,
          member:
            T.nilable(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member::OrHash
            ),
          merchant_appealed: T::Boolean,
          merchant_response_actions:
            T::Array[WhopSDK::ResolutionCenterCaseMerchantResponse::OrSymbol],
          payment:
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment::OrHash,
          platform_response_actions:
            T::Array[WhopSDK::ResolutionCenterCasePlatformResponse::OrSymbol],
          resolution_events:
            T::Array[
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::OrHash
            ],
          status: WhopSDK::ResolutionCenterCaseStatus::OrSymbol,
          updated_at: Time,
          user:
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the resolution.
        id:,
        # The company involved in this resolution case. Null if the company no longer
        # exists.
        company:,
        # The datetime the resolution was created.
        created_at:,
        # Whether the customer has filed an appeal after the initial resolution decision.
        customer_appealed:,
        # The list of actions currently available to the customer.
        customer_response_actions:,
        # The deadline by which the next response is required. Null if no deadline is
        # currently active. As a Unix timestamp.
        due_date:,
        # The category of the dispute.
        issue:,
        # The membership record associated with the disputed payment. Null if the
        # membership no longer exists.
        member:,
        # Whether the merchant has filed an appeal after the initial resolution decision.
        merchant_appealed:,
        # The list of actions currently available to the merchant.
        merchant_response_actions:,
        # The payment record that is the subject of this resolution case.
        payment:,
        # The list of actions currently available to the Whop platform for moderating this
        # resolution.
        platform_response_actions:,
        # The most recent 50 messages, actions, and status changes that have occurred
        # during this resolution case.
        resolution_events:,
        # The current status of the resolution case, indicating which party needs to
        # respond or if the case is closed.
        status:,
        # The datetime the resolution was last updated.
        updated_at:,
        # The customer (buyer) who filed this resolution case.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company:
              T.nilable(
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company
              ),
            created_at: Time,
            customer_appealed: T::Boolean,
            customer_response_actions:
              T::Array[
                WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
              ],
            due_date: T.nilable(Time),
            issue: WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol,
            member:
              T.nilable(
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member
              ),
            merchant_appealed: T::Boolean,
            merchant_response_actions:
              T::Array[
                WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
              ],
            payment:
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment,
            platform_response_actions:
              T::Array[
                WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
              ],
            resolution_events:
              T::Array[
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent
              ],
            status: WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol,
            updated_at: Time,
            user: WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company involved in this resolution case. Null if the company no longer
        # exists.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The display name of the company shown to customers.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the extra public member.
        sig { returns(String) }
        attr_accessor :id

        # The membership record associated with the disputed payment. Null if the
        # membership no longer exists.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the extra public member.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The datetime the payment was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
        attr_accessor :currency

        # The time at which this payment was successfully collected. Null if the payment
        # has not yet succeeded. As a Unix timestamp.
        sig { returns(T.nilable(Time)) }
        attr_accessor :paid_at

        # The payment amount before taxes and discounts are applied. In the currency
        # specified by the currency field.
        sig { returns(T.nilable(Float)) }
        attr_accessor :subtotal

        # The total amount charged to the customer for this payment, including taxes and
        # after any discounts. In the currency specified by the currency field.
        sig { returns(Float) }
        attr_accessor :total

        # The payment record that is the subject of this resolution case.
        sig do
          params(
            id: String,
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            paid_at: T.nilable(Time),
            subtotal: T.nilable(Float),
            total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payment.
          id:,
          # The datetime the payment was created.
          created_at:,
          # The available currencies on the platform
          currency:,
          # The time at which this payment was successfully collected. Null if the payment
          # has not yet succeeded. As a Unix timestamp.
          paid_at:,
          # The payment amount before taxes and discounts are applied. In the currency
          # specified by the currency field.
          subtotal:,
          # The total amount charged to the customer for this payment, including taxes and
          # after any discounts. In the currency specified by the currency field.
          total:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
              paid_at: T.nilable(Time),
              subtotal: T.nilable(Float),
              total: Float
            }
          )
        end
        def to_hash
        end
      end

      class ResolutionEvent < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the resolution event.
        sig { returns(String) }
        attr_accessor :id

        # The type of action recorded in this event.
        sig do
          returns(
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        # The datetime the resolution event was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The message body or additional context provided with this resolution event. Null
        # if no details were included.
        sig { returns(T.nilable(String)) }
        attr_accessor :details

        # The party who performed this action.
        sig do
          returns(
            WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
          )
        end
        attr_accessor :reporter_type

        # A resolution event is a message or action within a resolution case, such as a
        # response, escalation, or status change.
        sig do
          params(
            id: String,
            action:
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::OrSymbol,
            created_at: Time,
            details: T.nilable(String),
            reporter_type:
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the resolution event.
          id:,
          # The type of action recorded in this event.
          action:,
          # The datetime the resolution event was created.
          created_at:,
          # The message body or additional context provided with this resolution event. Null
          # if no details were included.
          details:,
          # The party who performed this action.
          reporter_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action:
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol,
              created_at: Time,
              details: T.nilable(String),
              reporter_type:
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of action recorded in this event.
        module Action
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          RESPONDED =
            T.let(
              :responded,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          ACCEPTED =
            T.let(
              :accepted,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          DENIED =
            T.let(
              :denied,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          APPEALED =
            T.let(
              :appealed,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          WITHDREW =
            T.let(
              :withdrew,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          REQUESTED_MORE_INFO =
            T.let(
              :requested_more_info,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          ESCALATED =
            T.let(
              :escalated,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          DISPUTE_OPENED =
            T.let(
              :dispute_opened,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          DISPUTE_CUSTOMER_WON =
            T.let(
              :dispute_customer_won,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )
          DISPUTE_MERCHANT_WON =
            T.let(
              :dispute_merchant_won,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The party who performed this action.
        module ReporterType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MERCHANT =
            T.let(
              :merchant,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
            )
          PLATFORM =
            T.let(
              :platform,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
            )
          SYSTEM =
            T.let(
              :system,
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::ResolutionEvent::ReporterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseRetrieveResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The customer (buyer) who filed this resolution case.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
