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
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Signed amount in the currency's smallest precision units.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Currency]
        required :currency, -> { WhopSDK::Models::FinancialActivityListResponse::Data::Currency }

        # @!attribute line_type
        #
        #   @return [String]
        required :line_type, String

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Object]
        required :object, enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Object }

        # @!attribute posted_at
        #
        #   @return [Time]
        required :posted_at, Time

        # @!attribute resource
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4, nil]
        required :resource,
                 union: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource },
                 nil?: true

        # @!attribute source
        #
        #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Source, nil]
        required :source, -> { WhopSDK::Models::FinancialActivityListResponse::Data::Source }, nil?: true

        # @!method initialize(id:, amount:, currency:, line_type:, object:, posted_at:, resource:, source:)
        #   @param id [String]
        #
        #   @param amount [String] Signed amount in the currency's smallest precision units.
        #
        #   @param currency [WhopSDK::Models::FinancialActivityListResponse::Data::Currency]
        #
        #   @param line_type [String]
        #
        #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Object]
        #
        #   @param posted_at [Time]
        #
        #   @param resource [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4, nil]
        #
        #   @param source [WhopSDK::Models::FinancialActivityListResponse::Data::Source, nil]

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#currency
        class Currency < WhopSDK::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String]
          required :code, String

          # @!attribute precision
          #   Precision factor for the currency, for example 100000000 for USD.
          #
          #   @return [String]
          required :precision, String

          # @!method initialize(code:, precision:)
          #   @param code [String]
          #
          #   @param precision [String] Precision factor for the currency, for example 100000000 for USD.
        end

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          LEDGER_ACTIVITY = :ledger_activity

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::FinancialActivityListResponse::Data#resource
        module Resource
          extend WhopSDK::Internal::Type::Union

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3 }

          variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4 }

          class UnionMember0 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute logo_url
            #
            #   @return [String, nil]
            required :logo_url, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object }

            # @!attribute route
            #
            #   @return [String, nil]
            required :route, String, nil?: true

            # @!attribute title
            #
            #   @return [String, nil]
            required :title, String, nil?: true

            # @!method initialize(id:, logo_url:, object:, route:, title:)
            #   @param id [String]
            #   @param logo_url [String, nil]
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0::Object]
            #   @param route [String, nil]
            #   @param title [String, nil]

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
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object }

            # @!attribute profile_picture_url
            #
            #   @return [String, nil]
            required :profile_picture_url, String, nil?: true

            # @!attribute username
            #
            #   @return [String, nil]
            required :username, String, nil?: true

            # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
            #   @param id [String]
            #   @param name [String, nil]
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1::Object]
            #   @param profile_picture_url [String, nil]
            #   @param username [String, nil]

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
            #
            #   @return [String]
            required :id, String

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object }

            # @!attribute owner
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1, nil]
            required :owner,
                     union: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner },
                     nil?: true

            # @!method initialize(id:, object:, owner:)
            #   @param id [String]
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Object]
            #   @param owner [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1, nil]

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              LEDGER_ACCOUNT = :ledger_account

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2#owner
            module Owner
              extend WhopSDK::Internal::Type::Union

              variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0 }

              variant -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1 }

              class UnionMember0 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute logo_url
                #
                #   @return [String, nil]
                required :logo_url, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object]
                required :object,
                         enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object }

                # @!attribute route
                #
                #   @return [String, nil]
                required :route, String, nil?: true

                # @!attribute title
                #
                #   @return [String, nil]
                required :title, String, nil?: true

                # @!method initialize(id:, logo_url:, object:, route:, title:)
                #   @param id [String]
                #   @param logo_url [String, nil]
                #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0::Object]
                #   @param route [String, nil]
                #   @param title [String, nil]

                # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  ACCOUNT = :account

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember1 < WhopSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String, nil]
                required :name, String, nil?: true

                # @!attribute object
                #
                #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object]
                required :object,
                         enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object }

                # @!attribute profile_picture_url
                #
                #   @return [String, nil]
                required :profile_picture_url, String, nil?: true

                # @!attribute username
                #
                #   @return [String, nil]
                required :username, String, nil?: true

                # @!method initialize(id:, name:, object:, profile_picture_url:, username:)
                #   @param id [String]
                #   @param name [String, nil]
                #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1::Object]
                #   @param profile_picture_url [String, nil]
                #   @param username [String, nil]

                # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1#object
                module Object
                  extend WhopSDK::Internal::Type::Enum

                  USER = :user

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2::Owner::UnionMember1)]
            end
          end

          class UnionMember3 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute bank
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank, nil]
            required :bank,
                     -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank },
                     nil?: true

            # @!attribute card
            #
            #   @return [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card, nil]
            required :card,
                     -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card },
                     nil?: true

            # @!attribute email_identifier
            #
            #   @return [String, nil]
            required :email_identifier, String, nil?: true

            # @!attribute gateway_type
            #
            #   @return [String, nil]
            required :gateway_type, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object }

            # @!attribute payment_method_type
            #
            #   @return [String, nil]
            required :payment_method_type, String, nil?: true

            # @!method initialize(id:, bank:, card:, email_identifier:, gateway_type:, object:, payment_method_type:)
            #   @param id [String]
            #   @param bank [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Bank, nil]
            #   @param card [WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Card, nil]
            #   @param email_identifier [String, nil]
            #   @param gateway_type [String, nil]
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3::Object]
            #   @param payment_method_type [String, nil]

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3#bank
            class Bank < WhopSDK::Internal::Type::BaseModel
              # @!attribute account_name
              #
              #   @return [String, nil]
              required :account_name, String, nil?: true

              # @!attribute account_type
              #
              #   @return [String, nil]
              required :account_type, String, nil?: true

              # @!attribute bank_name
              #
              #   @return [String, nil]
              required :bank_name, String, nil?: true

              # @!attribute last4
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(account_name:, account_type:, bank_name:, last4:)
              #   @param account_name [String, nil]
              #   @param account_type [String, nil]
              #   @param bank_name [String, nil]
              #   @param last4 [String, nil]
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3#card
            class Card < WhopSDK::Internal::Type::BaseModel
              # @!attribute brand
              #
              #   @return [String, nil]
              required :brand, String, nil?: true

              # @!attribute exp_month
              #
              #   @return [Integer, nil]
              required :exp_month, Integer, nil?: true

              # @!attribute exp_year
              #
              #   @return [Integer, nil]
              required :exp_year, Integer, nil?: true

              # @!attribute last4
              #
              #   @return [String, nil]
              required :last4, String, nil?: true

              # @!method initialize(brand:, exp_month:, exp_year:, last4:)
              #   @param brand [String, nil]
              #   @param exp_month [Integer, nil]
              #   @param exp_year [Integer, nil]
              #   @param last4 [String, nil]
            end

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYMENT_METHOD = :payment_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember4 < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute account_reference
            #
            #   @return [String, nil]
            required :account_reference, String, nil?: true

            # @!attribute destination_currency_code
            #
            #   @return [String, nil]
            required :destination_currency_code, String, nil?: true

            # @!attribute institution_name
            #
            #   @return [String, nil]
            required :institution_name, String, nil?: true

            # @!attribute nickname
            #
            #   @return [String, nil]
            required :nickname, String, nil?: true

            # @!attribute object
            #
            #   @return [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object]
            required :object,
                     enum: -> { WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object }

            # @!attribute provider
            #
            #   @return [String, nil]
            required :provider, String, nil?: true

            # @!method initialize(id:, account_reference:, destination_currency_code:, institution_name:, nickname:, object:, provider:)
            #   @param id [String]
            #   @param account_reference [String, nil]
            #   @param destination_currency_code [String, nil]
            #   @param institution_name [String, nil]
            #   @param nickname [String, nil]
            #   @param object [Symbol, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4::Object]
            #   @param provider [String, nil]

            # @see WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4#object
            module Object
              extend WhopSDK::Internal::Type::Enum

              PAYOUT_METHOD = :payout_method

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember0, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember1, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember2, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember3, WhopSDK::Models::FinancialActivityListResponse::Data::Resource::UnionMember4)]
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

          # @!method initialize(id:, object:)
          #   @param id [String]
          #   @param object [String]
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
