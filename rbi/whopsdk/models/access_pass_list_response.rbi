# typed: strong

module Whopsdk
  module Models
    class AccessPassListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::AccessPassListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # A list of nodes.
      sig do
        returns(
          T.nilable(
            T::Array[T.nilable(Whopsdk::Models::AccessPassListResponse::Data)]
          )
        )
      end
      attr_accessor :data

      # Information to aid in pagination.
      sig { returns(Whopsdk::Models::AccessPassListResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info: Whopsdk::Models::AccessPassListResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      # The connection type for PublicAccessPass.
      sig do
        params(
          data:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::Models::AccessPassListResponse::Data::OrHash)
              ]
            ),
          page_info: Whopsdk::Models::AccessPassListResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of nodes.
        data:,
        # Information to aid in pagination.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.nilable(
                T::Array[
                  T.nilable(Whopsdk::Models::AccessPassListResponse::Data)
                ]
              ),
            page_info: Whopsdk::Models::AccessPassListResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::AccessPassListResponse::Data,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the public access pass.
        sig { returns(String) }
        attr_accessor :id

        # The type of business the company is.
        sig do
          returns(
            T.nilable(
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          )
        end
        attr_accessor :business_type

        # When the access pass was created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The specific industry the company operates in.
        sig do
          returns(
            T.nilable(
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          )
        end
        attr_accessor :industry_type

        # The number of active users for this access pass.
        sig { returns(Integer) }
        attr_accessor :member_count

        # The number of reviews that have been published for the access pass.
        sig { returns(Integer) }
        attr_accessor :published_reviews_count

        # The route of the access pass.
        sig { returns(String) }
        attr_accessor :route

        # The title of the access pass. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # When the access pass was updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # Whether this product is Whop verified.
        sig { returns(T::Boolean) }
        attr_accessor :verified

        # An object representing a (sanitized) access pass.
        sig do
          params(
            id: String,
            business_type:
              T.nilable(
                Whopsdk::Models::AccessPassListResponse::Data::BusinessType::OrSymbol
              ),
            created_at: Integer,
            industry_type:
              T.nilable(
                Whopsdk::Models::AccessPassListResponse::Data::IndustryType::OrSymbol
              ),
            member_count: Integer,
            published_reviews_count: Integer,
            route: String,
            title: String,
            updated_at: Integer,
            verified: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the public access pass.
          id:,
          # The type of business the company is.
          business_type:,
          # When the access pass was created.
          created_at:,
          # The specific industry the company operates in.
          industry_type:,
          # The number of active users for this access pass.
          member_count:,
          # The number of reviews that have been published for the access pass.
          published_reviews_count:,
          # The route of the access pass.
          route:,
          # The title of the access pass. Use for Whop 4.0.
          title:,
          # When the access pass was updated.
          updated_at:,
          # Whether this product is Whop verified.
          verified:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              business_type:
                T.nilable(
                  Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
                ),
              created_at: Integer,
              industry_type:
                T.nilable(
                  Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
                ),
              member_count: Integer,
              published_reviews_count: Integer,
              route: String,
              title: String,
              updated_at: Integer,
              verified: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The type of business the company is.
        module BusinessType
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::Models::AccessPassListResponse::Data::BusinessType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EDUCATION_PROGRAM =
            T.let(
              :education_program,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          COACHING =
            T.let(
              :coaching,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          SOFTWARE =
            T.let(
              :software,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          PAID_GROUP =
            T.let(
              :paid_group,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          NEWSLETTER =
            T.let(
              :newsletter,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          AGENCY =
            T.let(
              :agency,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          PHYSICAL_PRODUCTS =
            T.let(
              :physical_products,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          BRICK_AND_MORTAR =
            T.let(
              :brick_and_mortar,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          EVENTS =
            T.let(
              :events,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          COACHING_AND_COURSES =
            T.let(
              :coaching_and_courses,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          SAAS =
            T.let(
              :saas,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          COURSE =
            T.let(
              :course,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )
          COMMUNITY =
            T.let(
              :community,
              Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::AccessPassListResponse::Data::BusinessType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The specific industry the company operates in.
        module IndustryType
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::Models::AccessPassListResponse::Data::IndustryType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRADING =
            T.let(
              :trading,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SPORTS_BETTING =
            T.let(
              :sports_betting,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          RESELLING =
            T.let(
              :reselling,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          FITNESS =
            T.let(
              :fitness,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          AMAZON_FBA =
            T.let(
              :amazon_fba,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          REAL_ESTATE =
            T.let(
              :real_estate,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          KINDLE_BOOK_PUBLISHING =
            T.let(
              :kindle_book_publishing,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          DATING =
            T.let(
              :dating,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          AGENCIES =
            T.let(
              :agencies,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          HEALTH_AND_WELLNESS =
            T.let(
              :health_and_wellness,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SOCIAL_MEDIA =
            T.let(
              :social_media,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          BUSINESS =
            T.let(
              :business,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          ECOMMERCE =
            T.let(
              :ecommerce,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          VIDEO_GAMES =
            T.let(
              :video_games,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          HOME_SERVICES =
            T.let(
              :home_services,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          AI =
            T.let(
              :ai,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          PUBLIC_SPEAKING =
            T.let(
              :public_speaking,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_FINANCE =
            T.let(
              :personal_finance,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CAREERS =
            T.let(
              :careers,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          TRAVEL =
            T.let(
              :travel,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CLIPPING =
            T.let(
              :clipping,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SPIRITUALITY =
            T.let(
              :spirituality,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          VAS =
            T.let(
              :vas,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          PERSONAL_DEVELOPMENT =
            T.let(
              :personal_development,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SOFTWARE =
            T.let(
              :software,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          MARKETING_AGENCY =
            T.let(
              :marketing_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SALES_AGENCY =
            T.let(
              :sales_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          AI_AGENCY =
            T.let(
              :ai_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          DESIGN_AGENCY =
            T.let(
              :design_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          COACHING_AGENCY =
            T.let(
              :coaching_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          DEVELOPMENT_AGENCY =
            T.let(
              :development_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          RECRUITING_AGENCY =
            T.let(
              :recruiting_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CUSTOMER_SUPPORT_AGENCY =
            T.let(
              :customer_support_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CLIPPING_AGENCY =
            T.let(
              :clipping_agency,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CLOTHING =
            T.let(
              :clothing,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SUPPLEMENTS =
            T.let(
              :supplements,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          BEAUTY_AND_PERSONAL_CARE =
            T.let(
              :beauty_and_personal_care,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          FITNESS_GEAR =
            T.let(
              :fitness_gear,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          ACCESSORIES =
            T.let(
              :accessories,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          HOME_GOODS =
            T.let(
              :home_goods,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          ELECTRONICS_AND_GADGETS =
            T.let(
              :electronics_and_gadgets,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          FOOD_AND_BEVERAGES =
            T.let(
              :food_and_beverages,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          GYM =
            T.let(
              :gym,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          RESTAURANT =
            T.let(
              :restaurant,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          RETAIL_STORE =
            T.let(
              :retail_store,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          COFFEE_SHOP =
            T.let(
              :coffee_shop,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          SALON_SPA =
            T.let(
              :salon_spa,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          MEDICAL_DENTIST_OFFICE =
            T.let(
              :medical_dentist_office,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          HOTEL_LODGING =
            T.let(
              :hotel_lodging,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          AUTO_REPAIR_SHOP =
            T.let(
              :auto_repair_shop,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          MASTERMINDS =
            T.let(
              :masterminds,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          WEBINARS =
            T.let(
              :webinars,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          BOOTCAMPS =
            T.let(
              :bootcamps,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CONVENTION =
            T.let(
              :convention,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          CONCERTS =
            T.let(
              :concerts,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          MEETUPS =
            T.let(
              :meetups,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )
          PARTIES =
            T.let(
              :parties,
              Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::AccessPassListResponse::Data::IndustryType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::AccessPassListResponse::PageInfo,
              Whopsdk::Internal::AnyHash
            )
          end

        # When paginating forwards, the cursor to continue.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        # When paginating forwards, are there more items?
        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        # When paginating backwards, are there more items?
        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        # When paginating backwards, the cursor to continue.
        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        # Information to aid in pagination.
        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # When paginating forwards, the cursor to continue.
          end_cursor:,
          # When paginating forwards, are there more items?
          has_next_page:,
          # When paginating backwards, are there more items?
          has_previous_page:,
          # When paginating backwards, the cursor to continue.
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
