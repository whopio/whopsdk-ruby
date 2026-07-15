# frozen_string_literal: true

module WhopSDK
  module Models
    module Partners
      module Businesses
        # @see WhopSDK::Resources::Partners::Businesses::Earnings#list
        class EarningListResponse < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute account
          #   Referred account.
          #
          #   @return [WhopSDK::Models::Partners::Businesses::EarningListResponse::Account, nil]
          required :account, -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Account }, nil?: true

          # @!attribute cancelation_reason
          #   Why the earning was canceled or reversed, if applicable.
          #
          #   @return [String, nil]
          required :cancelation_reason, String, nil?: true

          # @!attribute commission_amount_usd
          #   What the referrer earns, in USD. Null until the earning settles.
          #
          #   @return [String, nil]
          required :commission_amount_usd, String, nil?: true

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute financial_activity
          #   Income and cost lines behind this earning's commission. Null for earnings
          #   settled before this data was recorded.
          #
          #   @return [Array<WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity>, nil]
          required :financial_activity,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity] },
                   nil?: true

          # @!attribute object
          #
          #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Object]
          required :object, enum: -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Object }

          # @!attribute payout_at
          #
          #   @return [Time, nil]
          required :payout_at, Time, nil?: true

          # @!attribute payout_percentage
          #   The referrer's share of Whop's gross profit, as a fraction (0.3 = 30%). Null
          #   until the earning settles.
          #
          #   @return [Float, nil]
          required :payout_percentage, Float, nil?: true

          # @!attribute product
          #
          #   @return [WhopSDK::Models::Partners::Businesses::EarningListResponse::Product, nil]
          required :product, -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Product }, nil?: true

          # @!attribute resource
          #   The resource that generated the affiliate earning.
          #
          #   @return [WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource, nil]
          required :resource,
                   -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource },
                   nil?: true

          # @!attribute second_tier
          #   Whether this earning is a second-tier (grandparent) commission.
          #
          #   @return [Boolean]
          required :second_tier, WhopSDK::Internal::Type::Boolean

          # @!attribute status
          #   Current status of the earning.
          #
          #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Status]
          required :status, enum: -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Status }

          # @!attribute transaction_amount_usd
          #   The sale amount the commission is calculated from, in USD.
          #
          #   @return [String]
          required :transaction_amount_usd, String

          # @!method initialize(id:, account:, cancelation_reason:, commission_amount_usd:, created_at:, financial_activity:, object:, payout_at:, payout_percentage:, product:, resource:, second_tier:, status:, transaction_amount_usd:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Partners::Businesses::EarningListResponse} for more details.
          #
          #   @param id [String, nil]
          #
          #   @param account [WhopSDK::Models::Partners::Businesses::EarningListResponse::Account, nil] Referred account.
          #
          #   @param cancelation_reason [String, nil] Why the earning was canceled or reversed, if applicable.
          #
          #   @param commission_amount_usd [String, nil] What the referrer earns, in USD. Null until the earning settles.
          #
          #   @param created_at [Time]
          #
          #   @param financial_activity [Array<WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity>, nil] Income and cost lines behind this earning's commission. Null for earnings settle
          #
          #   @param object [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Object]
          #
          #   @param payout_at [Time, nil]
          #
          #   @param payout_percentage [Float, nil] The referrer's share of Whop's gross profit, as a fraction (0.3 = 30%). Null unt
          #
          #   @param product [WhopSDK::Models::Partners::Businesses::EarningListResponse::Product, nil]
          #
          #   @param resource [WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource, nil] The resource that generated the affiliate earning.
          #
          #   @param second_tier [Boolean] Whether this earning is a second-tier (grandparent) commission.
          #
          #   @param status [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Status] Current status of the earning.
          #
          #   @param transaction_amount_usd [String] The sale amount the commission is calculated from, in USD.

          # @see WhopSDK::Models::Partners::Businesses::EarningListResponse#account
          class Account < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Referred account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #   Referred account logo URL.
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute route
            #   Referred account route.
            #
            #   @return [String]
            required :route, String

            # @!attribute title
            #   Referred account display name.
            #
            #   @return [String]
            required :title, String

            # @!method initialize(id:, logo_url:, route:, title:)
            #   Referred account.
            #
            #   @param id [String] Referred account ID.
            #
            #   @param logo_url [String, nil] Referred account logo URL.
            #
            #   @param route [String] Referred account route.
            #
            #   @param title [String] Referred account display name.
          end

          class FinancialActivity < WhopSDK::Internal::Type::BaseModel
            # @!attribute amount
            #   Line amount in its native currency.
            #
            #   @return [String]
            required :amount, String

            # @!attribute amount_usd
            #   Line amount in USD.
            #
            #   @return [String]
            required :amount_usd, String

            # @!attribute category
            #   Fee or cost category of the line.
            #
            #   @return [String, nil]
            required :category, String, nil?: true

            # @!attribute created_at
            #
            #   @return [Time, nil]
            required :created_at, Time, nil?: true

            # @!attribute currency
            #   Currency of the native amount.
            #
            #   @return [String]
            required :currency, String

            # @!attribute type
            #   Whether the line is income Whop collected or a cost Whop paid.
            #
            #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type]
            required :type,
                     enum: -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type }

            # @!method initialize(amount:, amount_usd:, category:, created_at:, currency:, type:)
            #   @param amount [String] Line amount in its native currency.
            #
            #   @param amount_usd [String] Line amount in USD.
            #
            #   @param category [String, nil] Fee or cost category of the line.
            #
            #   @param created_at [Time, nil]
            #
            #   @param currency [String] Currency of the native amount.
            #
            #   @param type [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity::Type] Whether the line is income Whop collected or a cost Whop paid.

            # Whether the line is income Whop collected or a cost Whop paid.
            #
            # @see WhopSDK::Models::Partners::Businesses::EarningListResponse::FinancialActivity#type
            module Type
              extend WhopSDK::Internal::Type::Enum

              INCOME = :income
              EXPENSE = :expense

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see WhopSDK::Models::Partners::Businesses::EarningListResponse#object
          module Object
            extend WhopSDK::Internal::Type::Enum

            PARTNER_BUSINESS_EARNING = :partner_business_earning

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::Partners::Businesses::EarningListResponse#product
          class Product < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute route
            #
            #   @return [String]
            required :route, String

            # @!attribute title
            #
            #   @return [String]
            required :title, String

            # @!method initialize(id:, route:, title:)
            #   @param id [String]
            #   @param route [String]
            #   @param title [String]
          end

          # @see WhopSDK::Models::Partners::Businesses::EarningListResponse#resource
          class Resource < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute alternative_payment_method
            #
            #   @return [WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod, nil]
            required :alternative_payment_method,
                     -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod },
                     nil?: true

            # @!attribute brand
            #
            #   @return [String, nil]
            required :brand, String, nil?: true

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute last4
            #
            #   @return [String, nil]
            required :last4, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object]
            required :object,
                     enum: -> { WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object }

            # @!attribute payment_method_type
            #
            #   @return [String, nil]
            required :payment_method_type, String, nil?: true

            # @!attribute processor
            #
            #   @return [String, nil]
            required :processor, String, nil?: true

            # @!method initialize(id:, alternative_payment_method:, brand:, created_at:, currency:, last4:, object:, payment_method_type:, processor:)
            #   The resource that generated the affiliate earning.
            #
            #   @param id [String]
            #   @param alternative_payment_method [WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::AlternativePaymentMethod, nil]
            #   @param brand [String, nil]
            #   @param created_at [Time]
            #   @param currency [String]
            #   @param last4 [String, nil]
            #   @param object [Symbol, WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource::Object]
            #   @param payment_method_type [String, nil]
            #   @param processor [String, nil]

            # @see WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource#alternative_payment_method
            class AlternativePaymentMethod < WhopSDK::Internal::Type::BaseModel
              # @!attribute image_url
              #
              #   @return [String, nil]
              required :image_url, String, nil?: true

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!method initialize(image_url:, name:)
              #   @param image_url [String, nil]
              #   @param name [String]
            end

            # @see WhopSDK::Models::Partners::Businesses::EarningListResponse::Resource#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              RECEIPT = :receipt

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Current status of the earning.
          #
          # @see WhopSDK::Models::Partners::Businesses::EarningListResponse#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            AWAITING_SETTLEMENT = :awaiting_settlement
            PENDING = :pending
            COMPLETED = :completed
            CANCELED = :canceled
            REVERSED = :reversed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
