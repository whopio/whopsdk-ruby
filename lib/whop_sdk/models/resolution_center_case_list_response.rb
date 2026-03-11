# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::ResolutionCenterCases#list
    class ResolutionCenterCaseListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the resolution.
      #
      #   @return [String]
      required :id, String

      # @!attribute company
      #   The company involved in this resolution case. Null if the company no longer
      #   exists.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the resolution was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_appealed
      #   Whether the customer has filed an appeal after the initial resolution decision.
      #
      #   @return [Boolean]
      required :customer_appealed, WhopSDK::Internal::Type::Boolean

      # @!attribute customer_response_actions
      #   The list of actions currently available to the customer.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>]
      required :customer_response_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseCustomerResponse] }

      # @!attribute due_date
      #   The deadline by which the next response is required. Null if no deadline is
      #   currently active. As a Unix timestamp.
      #
      #   @return [Time, nil]
      required :due_date, Time, nil?: true

      # @!attribute issue
      #   The category of the dispute.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType]
      required :issue, enum: -> { WhopSDK::ResolutionCenterCaseIssueType }

      # @!attribute merchant_appealed
      #   Whether the merchant has filed an appeal after the initial resolution decision.
      #
      #   @return [Boolean]
      required :merchant_appealed, WhopSDK::Internal::Type::Boolean

      # @!attribute merchant_response_actions
      #   The list of actions currently available to the merchant.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>]
      required :merchant_response_actions,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ResolutionCenterCaseMerchantResponse] }

      # @!attribute payment
      #   The payment record that is the subject of this resolution case.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::Payment]
      required :payment, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::Payment }

      # @!attribute status
      #   The current status of the resolution case, indicating which party needs to
      #   respond or if the case is closed.
      #
      #   @return [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus]
      required :status, enum: -> { WhopSDK::ResolutionCenterCaseStatus }

      # @!attribute updated_at
      #   The datetime the resolution was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The customer (buyer) who filed this resolution case.
      #
      #   @return [WhopSDK::Models::ResolutionCenterCaseListResponse::User]
      required :user, -> { WhopSDK::Models::ResolutionCenterCaseListResponse::User }

      # @!method initialize(id:, company:, created_at:, customer_appealed:, customer_response_actions:, due_date:, issue:, merchant_appealed:, merchant_response_actions:, payment:, status:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ResolutionCenterCaseListResponse} for more details.
      #
      #   A resolution center case is a dispute or support case between a user and a
      #   company, tracking the issue, status, and outcome.
      #
      #   @param id [String] The unique identifier for the resolution.
      #
      #   @param company [WhopSDK::Models::ResolutionCenterCaseListResponse::Company, nil] The company involved in this resolution case. Null if the company no longer exis
      #
      #   @param created_at [Time] The datetime the resolution was created.
      #
      #   @param customer_appealed [Boolean] Whether the customer has filed an appeal after the initial resolution decision.
      #
      #   @param customer_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseCustomerResponse>] The list of actions currently available to the customer.
      #
      #   @param due_date [Time, nil] The deadline by which the next response is required. Null if no deadline is curr
      #
      #   @param issue [Symbol, WhopSDK::Models::ResolutionCenterCaseIssueType] The category of the dispute.
      #
      #   @param merchant_appealed [Boolean] Whether the merchant has filed an appeal after the initial resolution decision.
      #
      #   @param merchant_response_actions [Array<Symbol, WhopSDK::Models::ResolutionCenterCaseMerchantResponse>] The list of actions currently available to the merchant.
      #
      #   @param payment [WhopSDK::Models::ResolutionCenterCaseListResponse::Payment] The payment record that is the subject of this resolution case.
      #
      #   @param status [Symbol, WhopSDK::Models::ResolutionCenterCaseStatus] The current status of the resolution case, indicating which party needs to respo
      #
      #   @param updated_at [Time] The datetime the resolution was last updated.
      #
      #   @param user [WhopSDK::Models::ResolutionCenterCaseListResponse::User] The customer (buyer) who filed this resolution case.

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company involved in this resolution case. Null if the company no longer
        #   exists.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The payment record that is the subject of this resolution case.
        #
        #   @param id [String] The unique identifier for the payment.
      end

      # @see WhopSDK::Models::ResolutionCenterCaseListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The customer (buyer) who filed this resolution case.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
