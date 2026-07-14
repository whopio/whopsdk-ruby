# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::FinancialActivity#list
    class FinancialActivityListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::FinancialActivityListResponse::Data>]
      required :data,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::FinancialActivityListResponse::Data] }

      # @!attribute page_info
      #
      #   @return [WhopSDK::Models::FinancialActivityListResponse::PageInfo]
      required :page_info, -> { WhopSDK::Models::FinancialActivityListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<WhopSDK::Models::FinancialActivityListResponse::Data>]
      #   @param page_info [WhopSDK::Models::FinancialActivityListResponse::PageInfo]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Ledger activity ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Signed amount in the currency's smallest precision units.
        #
        #   @return [String]
        required :amount, String

        # @!attribute available_at
        #   ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        #   the posted time for already-settled funds, or 00:00:00 UTC on the scheduled
        #   release date for pending funds. Present only on inflows entering the balance
        #   (payments, top-ups, incoming transfers/affiliate); null on withdrawals, refunds,
        #   disputes and on-chain rows. The available_after/before filters window on its UTC
        #   settlement date.
        #
        #   @return [Time, nil]
        required :available_at, Time, nil?: true

        # @!attribute created_at
        #   When the activity record was created.
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute currency
        #   Currency for this ledger activity.
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Currency]
        required :currency, -> { WhopSDK::Models::FinancialActivityListResponse::Data::Currency }

        # @!attribute line_type
        #   Type of ledger activity.
        #
        #   @return [String]
        required :line_type, String

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Object]
        required :object, enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Object }

        # @!attribute posted_at
        #   When the activity posted to the ledger.
        #
        #   @return [Time]
        required :posted_at, Time

        # @!attribute resource
        #   Resource associated with this ledger activity.
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6, nil]
        required :resource,
                 union: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource },
                 nil?: true

        # @!attribute source
        #   Source of this ledger activity.
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Source, nil]
        required :source, -> { WhopSDK::Models::FinancialActivityListResponse::Data::Source }, nil?: true

        # @!attribute account
        #   The viewer account that owns this row's ledger. Present only when the response
        #   aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1, nil]
        optional :account, union: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Account }

        # @!attribute ledger_account_id
        #   The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        #   the response aggregates owned accounts (include_owned_accounts=true); omitted
        #   otherwise. Pair it with `account` to scope drawers and dashboard links to the
        #   owning business.
        #
        #   @return [String, nil]
        optional :ledger_account_id, String, nil?: true

        # @!method initialize(id:, amount:, available_at:, created_at:, currency:, line_type:, object:, posted_at:, resource:, source:, account: nil, ledger_account_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::FinancialActivityListResponse::Data} for more details.
        #
        #   @param id [String] Ledger activity ID.
        #
        #   @param amount [String] Signed amount in the currency's smallest precision units.
        #
        #   @param available_at [Time, nil] ISO 8601 timestamp these funds became (or are scheduled to become) withdrawable:
        #
        #   @param created_at [Time, nil] When the activity record was created.
        #
        #   @param currency [WhopSDK::Models::FinancialActivityListResponse::Data::Currency] Currency for this ledger activity.
        #
        #   @param line_type [String] Type of ledger activity.
        #
        #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Object]
        #
        #   @param posted_at [Time] When the activity posted to the ledger.
        #
        #   @param resource [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6, nil] Resource associated with this ledger activity.
        #
        #   @param source [WhopSDK::Models::FinancialActivityListResponse::Data::Source, nil] Source of this ledger activity.
        #
        #   @param account [WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1] The viewer account that owns this row's ledger. Present only when the response a
        #
        #   @param ledger_account_id [String, nil] The ledger account (a ldgr\_ identifier) this row belongs to. Present only when
        #   t

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#currency
        class Currency < WhopSDK::Internal::Type::BaseModel
          # @!attribute code
          #   Currency code.
          #
          #   @return [String]
          required :code, String

          # @!attribute precision
          #   Precision factor for the currency, for example `100000000` for USD.
          #
          #   @return [String]
          required :precision, String

          # @!method initialize(code:, precision:)
          #   Currency for this ledger activity.
          #
          #   @param code [String] Currency code.
          #
          #   @param precision [String] Precision factor for the currency, for example `100000000` for USD.
        end

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          LEDGER_ACTIVITY = :ledger_activity

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Resource associated with this ledger activity.
        #
        # @see WhopSDK::Models::FinancialActivityListResponse::Data#resource
        module Resource
          extend WhopSDK::Internal::Type::Union

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6 }

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #   Account logo URL.
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object }

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            required :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            required :title, String, nil?: true

            # @!method initialize(id:, logo_url:, object:, route:, title:)
            #   @param id [String] Account ID.
            #
            #   @param logo_url [String, nil] Account logo URL.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object]
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              ACCOUNT = :account

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object }

            # @!attribute profile_picture_url
            #   User profile image URL.
            #
            #   @return [String, nil]
            required :profile_picture_url, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            required :username, String, nil?: true

            # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object]
            #
            #   @param profile_picture_url [String, nil] User profile image URL.
            #
            #   @param username [String, nil] User's username.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              USER = :user

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember2 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Bounty ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object }

            # @!attribute status
            #   Bounty lifecycle status.
            #
            #   @return [String]
            required :status, String

            # @!attribute title
            #   Bounty title.
            #
            #   @return [String]
            required :title, String

            # @!method initialize(id:, object:, status:, title:)
            #   @param id [String] Bounty ID.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object]
            #
            #   @param status [String] Bounty lifecycle status.
            #
            #   @param title [String] Bounty title.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              BOUNTY = :bounty

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Ledger account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object }

            # @!attribute owner
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1, nil]
            required :owner,
                     union: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner },
                     nil?: true

            # @!method initialize(id:, object:, owner:)
            #   @param id [String] Ledger account ID.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object]
            #
            #   @param owner [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1, nil]

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              LEDGER_ACCOUNT = :ledger_account

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3#owner
            module Owner
              extend WhopSDK::Internal::Type::Union

              variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0 }

              variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1 }

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #   Account ID.
                #
                #   @return [String]
                required :id, String

                # @!attribute logo_url
                #   Account logo URL.
                #
                #   @return [String, nil]
                required :logo_url, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object]
                required :object,
                         enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object }

                # @!attribute route
                #   Account route.
                #
                #   @return [String, nil]
                required :route, String, nil?: true

                # @!attribute title
                #   Account display name.
                #
                #   @return [String, nil]
                required :title, String, nil?: true

                # @!method initialize(id:, logo_url:, object:, route:, title:)
                #   @param id [String] Account ID.
                #
                #   @param logo_url [String, nil] Account logo URL.
                #
                #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0::Object]
                #
                #   @param route [String, nil] Account route.
                #
                #   @param title [String, nil] Account display name.

                # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  ACCOUNT = :account

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember1 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #   User ID.
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #   User display name.
                #
                #   @return [String, nil]
                required :name, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object]
                required :object,
                         enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object }

                # @!attribute profile_picture_url
                #   User profile image URL.
                #
                #   @return [String, nil]
                required :profile_picture_url, String, nil?: true

                # @!attribute username
                #   User's username.
                #
                #   @return [String, nil]
                required :username, String, nil?: true

                # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
                #   @param id [String] User ID.
                #
                #   @param name [String, nil] User display name.
                #
                #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1::Object]
                #
                #   @param profile_picture_url [String, nil] User profile image URL.
                #
                #   @param username [String, nil] User's username.

                # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  USER = :user

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Owner::UnionMember1)]
            end
          end

          class UnionMember4 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Payment method ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute bank
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank, nil]
            required :bank,
                     -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank },
                     nil?: true

            # @!attribute card
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card, nil]
            required :card,
                     -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card },
                     nil?: true

            # @!attribute email_identifier
            #   Email identifier for email-based payment methods.
            #
            #   @return [String, nil]
            required :email_identifier, String, nil?: true

            # @!attribute gateway_type
            #   Payment gateway type.
            #
            #   @return [String, nil]
            required :gateway_type, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object }

            # @!attribute payment_method_type
            #   Payment method type.
            #
            #   @return [String, nil]
            required :payment_method_type, String, nil?: true

            # @!method initialize(id:, bank:, card:, email_identifier:, gateway_type:, object:, payment_method_type:)
            #   @param id [String] Payment method ID.
            #
            #   @param bank [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Bank, nil]
            #
            #   @param card [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Card, nil]
            #
            #   @param email_identifier [String, nil] Email identifier for email-based payment methods.
            #
            #   @param gateway_type [String, nil] Payment gateway type.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object]
            #
            #   @param payment_method_type [String, nil] Payment method type.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4#bank
            class Bank < WhopSDK::Internal::Type::BaseModel
              # @!attribute account_name
              #   Bank account holder name.
              #
              #   @return [String, nil]
              required :account_name, String, nil?: true

              # @!attribute account_type
              #   Bank account type.
              #
              #   @return [String, nil]
              required :account_type, String, nil?: true

              # @!attribute bank_name
              #   Bank name.
              #
              #   @return [String, nil]
              required :bank_name, String, nil?: true

              # @!attribute last4
              #   Last four digits of the bank account.
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(account_name:, account_type:, bank_name:, last4:)
              #   @param account_name [String, nil] Bank account holder name.
              #
              #   @param account_type [String, nil] Bank account type.
              #
              #   @param bank_name [String, nil] Bank name.
              #
              #   @param last4 [String, nil] Last four digits of the bank account.
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4#card
            class Card < WhopSDK::Internal::Type::BaseModel
              # @!attribute brand
              #   Card brand.
              #
              #   @return [String, nil]
              required :brand, String, nil?: true

              # @!attribute exp_month
              #   Card expiration month.
              #
              #   @return [Integer, nil]
              required :exp_month, Integer, nil?: true

              # @!attribute exp_year
              #   Card expiration year.
              #
              #   @return [Integer, nil]
              required :exp_year, Integer, nil?: true

              # @!attribute last4
              #   Last four digits of the card.
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(brand:, exp_month:, exp_year:, last4:)
              #   @param brand [String, nil] Card brand.
              #
              #   @param exp_month [Integer, nil] Card expiration month.
              #
              #   @param exp_year [Integer, nil] Card expiration year.
              #
              #   @param last4 [String, nil] Last four digits of the card.
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYMENT_METHOD = :payment_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember5 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Payout method ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute account_reference
            #   Masked account reference.
            #
            #   @return [String, nil]
            required :account_reference, String, nil?: true

            # @!attribute destination_currency_code
            #   Destination currency code.
            #
            #   @return [String, nil]
            required :destination_currency_code, String, nil?: true

            # @!attribute institution_name
            #   Payout institution name.
            #
            #   @return [String, nil]
            required :institution_name, String, nil?: true

            # @!attribute nickname
            #   Payout method nickname.
            #
            #   @return [String, nil]
            required :nickname, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object }

            # @!attribute provider
            #   Payout provider.
            #
            #   @return [String, nil]
            required :provider, String, nil?: true

            # @!method initialize(id:, account_reference:, destination_currency_code:, institution_name:, nickname:, object:, provider:)
            #   @param id [String] Payout method ID.
            #
            #   @param account_reference [String, nil] Masked account reference.
            #
            #   @param destination_currency_code [String, nil] Destination currency code.
            #
            #   @param institution_name [String, nil] Payout institution name.
            #
            #   @param nickname [String, nil] Payout method nickname.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5::Object]
            #
            #   @param provider [String, nil] Payout provider.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYOUT_METHOD = :payout_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember6 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Card transaction ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute authorized_at
            #   ISO 8601 timestamp the transaction was authorized.
            #
            #   @return [Time, nil]
            required :authorized_at, Time, nil?: true

            # @!attribute card_id
            #   Identifier of the card that the transaction was charged to.
            #
            #   @return [String, nil]
            required :card_id, String, nil?: true

            # @!attribute cashback_usd
            #   Cashback earned on this transaction as a USD decimal string. Zero for declined
            #   or ineligible transactions; null when cashback has not been computed yet.
            #
            #   @return [String, nil]
            required :cashback_usd, String, nil?: true

            # @!attribute declined_reason
            #   Reason the transaction was declined (when status is declined).
            #
            #   @return [String, nil]
            required :declined_reason, String, nil?: true

            # @!attribute local_amount
            #   Amount the merchant charged in their local currency, as a decimal string. Pair
            #   with local_currency.
            #
            #   @return [String, nil]
            required :local_amount, String, nil?: true

            # @!attribute local_currency
            #   ISO 4217 currency code of the merchant-charged amount in local_amount.
            #
            #   @return [String, nil]
            required :local_currency, String, nil?: true

            # @!attribute merchant_category
            #   Merchant category.
            #
            #   @return [String, nil]
            required :merchant_category, String, nil?: true

            # @!attribute merchant_icon_url
            #   Merchant icon URL.
            #
            #   @return [String, nil]
            required :merchant_icon_url, String, nil?: true

            # @!attribute merchant_name
            #   Merchant display name.
            #
            #   @return [String, nil]
            required :merchant_name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object }

            # @!attribute posted_at
            #   ISO 8601 timestamp the transaction was settled by the card network.
            #
            #   @return [Time, nil]
            required :posted_at, Time, nil?: true

            # @!attribute status
            #   Current card transaction status.
            #
            #   @return [String, nil]
            required :status, String, nil?: true

            # @!attribute usd_amount
            #   The processor-settled USD amount as a decimal string. The ledger's USDT leg is
            #   posted 1:1 from this value.
            #
            #   @return [String, nil]
            required :usd_amount, String, nil?: true

            # @!method initialize(id:, authorized_at:, card_id:, cashback_usd:, declined_reason:, local_amount:, local_currency:, merchant_category:, merchant_icon_url:, merchant_name:, object:, posted_at:, status:, usd_amount:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6}
            #   for more details.
            #
            #   @param id [String] Card transaction ID.
            #
            #   @param authorized_at [Time, nil] ISO 8601 timestamp the transaction was authorized.
            #
            #   @param card_id [String, nil] Identifier of the card that the transaction was charged to.
            #
            #   @param cashback_usd [String, nil] Cashback earned on this transaction as a USD decimal string. Zero for declined o
            #
            #   @param declined_reason [String, nil] Reason the transaction was declined (when status is declined).
            #
            #   @param local_amount [String, nil] Amount the merchant charged in their local currency, as a decimal string. Pair w
            #
            #   @param local_currency [String, nil] ISO 4217 currency code of the merchant-charged amount in local_amount.
            #
            #   @param merchant_category [String, nil] Merchant category.
            #
            #   @param merchant_icon_url [String, nil] Merchant icon URL.
            #
            #   @param merchant_name [String, nil] Merchant display name.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6::Object]
            #
            #   @param posted_at [Time, nil] ISO 8601 timestamp the transaction was settled by the card network.
            #
            #   @param status [String, nil] Current card transaction status.
            #
            #   @param usd_amount [String, nil] The processor-settled USD amount as a decimal string. The ledger's USDT leg is p

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              CARD_TRANSACTION = :card_transaction

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember5, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember6)]
        end

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#source
        class Source < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [String]
          required :object, String

          # @!attribute amount_float
          #   Withdrawal amount as a decimal number in the destination currency (withdrawal
          #   sources only; requires payout:withdrawal:read).
          #
          #   @return [Float, nil]
          optional :amount_float, Float, nil?: true

          # @!attribute chain
          #   Chain the deposit landed on, for example plasma (onchain_transaction sources
          #   only).
          #
          #   @return [String, nil]
          optional :chain, String, nil?: true

          # @!attribute claim_url
          #   Public claim URL for the airdrop link (airdrop_link sources only).
          #
          #   @return [String, nil]
          optional :claim_url, String, nil?: true

          # @!attribute created_at
          #   Withdrawal creation time as an ISO 8601 timestamp (withdrawal sources only;
          #   requires payout:withdrawal:read).
          #
          #   @return [Time, nil]
          optional :created_at, Time, nil?: true

          # @!attribute estimated_arrival
          #   Estimated arrival as an ISO 8601 timestamp (withdrawal sources only; requires
          #   payout:withdrawal:read).
          #
          #   @return [Time, nil]
          optional :estimated_arrival, Time, nil?: true

          # @!attribute from_amount
          #   Amount converted out of from_currency as a decimal string (swap sources only).
          #
          #   @return [String, nil]
          optional :from_amount, String, nil?: true

          # @!attribute from_currency
          #   Lowercase currency code converted from (swap sources only).
          #
          #   @return [String, nil]
          optional :from_currency, String, nil?: true

          # @!attribute payer_name
          #   Name of the entity processing the payout (withdrawal sources only; requires
          #   payout:withdrawal:read).
          #
          #   @return [String, nil]
          optional :payer_name, String, nil?: true

          # @!attribute payout_destination
          #   Payout destination display info (withdrawal sources only).
          #
          #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination, nil]
          optional :payout_destination,
                   -> { WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination },
                   nil?: true

          # @!attribute payout_token_nickname
          #   Saved payout destination nickname (withdrawal sources only).
          #
          #   @return [String, nil]
          optional :payout_token_nickname, String, nil?: true

          # @!attribute reason
          #   Transfer reason on transfer sources, for example pool_top_up or bounty_return.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute sender_address
          #   Sender wallet address or onramp provider identifier (onchain_transaction sources
          #   only).
          #
          #   @return [String, nil]
          optional :sender_address, String, nil?: true

          # @!attribute status
          #   Lifecycle status. On withdrawal sources this is the withdrawal status (requires
          #   payout:withdrawal:read); on airdrop_link sources it is the claim-link status
          #   (ungated); on payment and top-up sources it is the friendly payment status such
          #   as succeeded/pending/failed (ungated).
          #
          #   @return [String, nil]
          optional :status, String, nil?: true

          # @!attribute to_amount
          #   Amount received in to_currency as a decimal string (swap sources only).
          #
          #   @return [String, nil]
          optional :to_amount, String, nil?: true

          # @!attribute to_currency
          #   Lowercase currency code converted to (swap sources only).
          #
          #   @return [String, nil]
          optional :to_currency, String, nil?: true

          # @!attribute tx_hash
          #   On-chain transaction hash (onchain_transaction and swap sources only).
          #
          #   @return [String, nil]
          optional :tx_hash, String, nil?: true

          # @!method initialize(id:, object:, amount_float: nil, chain: nil, claim_url: nil, created_at: nil, estimated_arrival: nil, from_amount: nil, from_currency: nil, payer_name: nil, payout_destination: nil, payout_token_nickname: nil, reason: nil, sender_address: nil, status: nil, to_amount: nil, to_currency: nil, tx_hash: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::FinancialActivityListResponse::Data::Source} for more details.
          #
          #   Source of this ledger activity.
          #
          #   @param id [String]
          #
          #   @param object [String]
          #
          #   @param amount_float [Float, nil] Withdrawal amount as a decimal number in the destination currency (withdrawal so
          #
          #   @param chain [String, nil] Chain the deposit landed on, for example plasma (onchain_transaction sources onl
          #
          #   @param claim_url [String, nil] Public claim URL for the airdrop link (airdrop_link sources only).
          #
          #   @param created_at [Time, nil] Withdrawal creation time as an ISO 8601 timestamp (withdrawal sources only; requ
          #
          #   @param estimated_arrival [Time, nil] Estimated arrival as an ISO 8601 timestamp (withdrawal sources only; requires pa
          #
          #   @param from_amount [String, nil] Amount converted out of from_currency as a decimal string (swap sources only).
          #
          #   @param from_currency [String, nil] Lowercase currency code converted from (swap sources only).
          #
          #   @param payer_name [String, nil] Name of the entity processing the payout (withdrawal sources only; requires payo
          #
          #   @param payout_destination [WhopSDK::Models::FinancialActivityListResponse::Data::Source::PayoutDestination, nil] Payout destination display info (withdrawal sources only).
          #
          #   @param payout_token_nickname [String, nil] Saved payout destination nickname (withdrawal sources only).
          #
          #   @param reason [String, nil] Transfer reason on transfer sources, for example pool_top_up or bounty_return.
          #
          #   @param sender_address [String, nil] Sender wallet address or onramp provider identifier (onchain_transaction sources
          #
          #   @param status [String, nil] Lifecycle status. On withdrawal sources this is the withdrawal status (requires
          #
          #   @param to_amount [String, nil] Amount received in to_currency as a decimal string (swap sources only).
          #
          #   @param to_currency [String, nil] Lowercase currency code converted to (swap sources only).
          #
          #   @param tx_hash [String, nil] On-chain transaction hash (onchain_transaction and swap sources only).

          # @see WhopSDK::Models::FinancialActivityListResponse::Data::Source#payout_destination
          class PayoutDestination < WhopSDK::Internal::Type::BaseModel
            # @!attribute icon_url
            #
            #   @return [String, nil]
            optional :icon_url, String, nil?: true

            # @!attribute payer_name
            #
            #   @return [String, nil]
            optional :payer_name, String, nil?: true

            # @!method initialize(icon_url: nil, payer_name: nil)
            #   Payout destination display info (withdrawal sources only).
            #
            #   @param icon_url [String, nil]
            #   @param payer_name [String, nil]
          end
        end

        # The viewer account that owns this row's ledger. Present only when the response
        # aggregates owned accounts (include_owned_accounts=true); omitted otherwise.
        #
        # @see WhopSDK::Models::FinancialActivityListResponse::Data#account
        module Account
          extend WhopSDK::Internal::Type::Union

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1 }

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   Account ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #   Account logo URL.
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object }

            # @!attribute route
            #   Account route.
            #
            #   @return [String, nil]
            required :route, String, nil?: true

            # @!attribute title
            #   Account display name.
            #
            #   @return [String, nil]
            required :title, String, nil?: true

            # @!method initialize(id:, logo_url:, object:, route:, title:)
            #   @param id [String] Account ID.
            #
            #   @param logo_url [String, nil] Account logo URL.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0::Object]
            #
            #   @param route [String, nil] Account route.
            #
            #   @param title [String, nil] Account display name.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              ACCOUNT = :account

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   User ID.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   User display name.
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object }

            # @!attribute profile_picture_url
            #   User profile image URL.
            #
            #   @return [String, nil]
            required :profile_picture_url, String, nil?: true

            # @!attribute username
            #   User's username.
            #
            #   @return [String, nil]
            required :username, String, nil?: true

            # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
            #   @param id [String] User ID.
            #
            #   @param name [String, nil] User display name.
            #
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1::Object]
            #
            #   @param profile_picture_url [String, nil] User profile image URL.
            #
            #   @param username [String, nil] User's username.

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              USER = :user

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Account::UnionMember1)]
        end
      end

      # @see WhopSDK::Models::FinancialActivityListResponse#page_info
      class PageInfo < WhopSDK::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, WhopSDK::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, WhopSDK::Internal::Type::Boolean

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
