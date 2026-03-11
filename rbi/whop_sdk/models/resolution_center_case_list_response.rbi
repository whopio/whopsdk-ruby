# typed: strong

module WhopSDK
  module Models
    class ResolutionCenterCaseListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ResolutionCenterCaseListResponse,
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
          T.nilable(WhopSDK::Models::ResolutionCenterCaseListResponse::Company)
        )
      end
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(
              WhopSDK::Models::ResolutionCenterCaseListResponse::Company::OrHash
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
        returns(WhopSDK::Models::ResolutionCenterCaseListResponse::Payment)
      end
      attr_reader :payment

      sig do
        params(
          payment:
            WhopSDK::Models::ResolutionCenterCaseListResponse::Payment::OrHash
        ).void
      end
      attr_writer :payment

      # The current status of the resolution case, indicating which party needs to
      # respond or if the case is closed.
      sig { returns(WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol) }
      attr_accessor :status

      # The datetime the resolution was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The customer (buyer) who filed this resolution case.
      sig { returns(WhopSDK::Models::ResolutionCenterCaseListResponse::User) }
      attr_reader :user

      sig do
        params(
          user: WhopSDK::Models::ResolutionCenterCaseListResponse::User::OrHash
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
              WhopSDK::Models::ResolutionCenterCaseListResponse::Company::OrHash
            ),
          created_at: Time,
          customer_appealed: T::Boolean,
          customer_response_actions:
            T::Array[WhopSDK::ResolutionCenterCaseCustomerResponse::OrSymbol],
          due_date: T.nilable(Time),
          issue: WhopSDK::ResolutionCenterCaseIssueType::OrSymbol,
          merchant_appealed: T::Boolean,
          merchant_response_actions:
            T::Array[WhopSDK::ResolutionCenterCaseMerchantResponse::OrSymbol],
          payment:
            WhopSDK::Models::ResolutionCenterCaseListResponse::Payment::OrHash,
          status: WhopSDK::ResolutionCenterCaseStatus::OrSymbol,
          updated_at: Time,
          user: WhopSDK::Models::ResolutionCenterCaseListResponse::User::OrHash
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
        # Whether the merchant has filed an appeal after the initial resolution decision.
        merchant_appealed:,
        # The list of actions currently available to the merchant.
        merchant_response_actions:,
        # The payment record that is the subject of this resolution case.
        payment:,
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
                WhopSDK::Models::ResolutionCenterCaseListResponse::Company
              ),
            created_at: Time,
            customer_appealed: T::Boolean,
            customer_response_actions:
              T::Array[
                WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
              ],
            due_date: T.nilable(Time),
            issue: WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol,
            merchant_appealed: T::Boolean,
            merchant_response_actions:
              T::Array[
                WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
              ],
            payment: WhopSDK::Models::ResolutionCenterCaseListResponse::Payment,
            status: WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol,
            updated_at: Time,
            user: WhopSDK::Models::ResolutionCenterCaseListResponse::User
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseListResponse::Company,
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

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseListResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The payment record that is the subject of this resolution case.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the payment.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ResolutionCenterCaseListResponse::User,
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
