# typed: strong

module Whopsdk
  module Models
    class AccessPassRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::AccessPassRetrieveResponse,
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
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
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
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        )
      end
      attr_accessor :industry_type

      # The number of active users for this access pass.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user that owns the access pass (company owner).
      sig { returns(Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser) }
      attr_reader :owner_user

      sig do
        params(
          owner_user:
            Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser::OrHash
        ).void
      end
      attr_writer :owner_user

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
              Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::OrSymbol
            ),
          created_at: Integer,
          industry_type:
            T.nilable(
              Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::OrSymbol
            ),
          member_count: Integer,
          owner_user:
            Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser::OrHash,
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
        # The user that owns the access pass (company owner).
        owner_user:,
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
                Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
              ),
            created_at: Integer,
            industry_type:
              T.nilable(
                Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
              ),
            member_count: Integer,
            owner_user: Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser,
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
              Whopsdk::Models::AccessPassRetrieveResponse::BusinessType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EDUCATION_PROGRAM =
          T.let(
            :education_program,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        COACHING =
          T.let(
            :coaching,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        PAID_GROUP =
          T.let(
            :paid_group,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        NEWSLETTER =
          T.let(
            :newsletter,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        AGENCY =
          T.let(
            :agency,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        PHYSICAL_PRODUCTS =
          T.let(
            :physical_products,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        BRICK_AND_MORTAR =
          T.let(
            :brick_and_mortar,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        EVENTS =
          T.let(
            :events,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        COACHING_AND_COURSES =
          T.let(
            :coaching_and_courses,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        SAAS =
          T.let(
            :saas,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        COURSE =
          T.let(
            :course,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )
        COMMUNITY =
          T.let(
            :community,
            Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::AccessPassRetrieveResponse::BusinessType::TaggedSymbol
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
              Whopsdk::Models::AccessPassRetrieveResponse::IndustryType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRADING =
          T.let(
            :trading,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SPORTS_BETTING =
          T.let(
            :sports_betting,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        RESELLING =
          T.let(
            :reselling,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        FITNESS =
          T.let(
            :fitness,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        AMAZON_FBA =
          T.let(
            :amazon_fba,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        KINDLE_BOOK_PUBLISHING =
          T.let(
            :kindle_book_publishing,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        DATING =
          T.let(
            :dating,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        AGENCIES =
          T.let(
            :agencies,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SOCIAL_MEDIA =
          T.let(
            :social_media,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALES =
          T.let(
            :sales,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        ECOMMERCE =
          T.let(
            :ecommerce,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        VIDEO_GAMES =
          T.let(
            :video_games,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOME_SERVICES =
          T.let(
            :home_services,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        PUBLIC_SPEAKING =
          T.let(
            :public_speaking,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CAREERS =
          T.let(
            :careers,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        TRAVEL =
          T.let(
            :travel,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLIPPING =
          T.let(
            :clipping,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SPIRITUALITY =
          T.let(
            :spirituality,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        VAS =
          T.let(
            :vas,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        MARKETING_AGENCY =
          T.let(
            :marketing_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALES_AGENCY =
          T.let(
            :sales_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        AI_AGENCY =
          T.let(
            :ai_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        DESIGN_AGENCY =
          T.let(
            :design_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        COACHING_AGENCY =
          T.let(
            :coaching_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        DEVELOPMENT_AGENCY =
          T.let(
            :development_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        RECRUITING_AGENCY =
          T.let(
            :recruiting_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCY =
          T.let(
            :customer_support_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLIPPING_AGENCY =
          T.let(
            :clipping_agency,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLOTHING =
          T.let(
            :clothing,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SUPPLEMENTS =
          T.let(
            :supplements,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        FITNESS_GEAR =
          T.let(
            :fitness_gear,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOME_GOODS =
          T.let(
            :home_goods,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        GYM =
          T.let(
            :gym,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        RESTAURANT =
          T.let(
            :restaurant,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        RETAIL_STORE =
          T.let(
            :retail_store,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        COFFEE_SHOP =
          T.let(
            :coffee_shop,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALON_SPA =
          T.let(
            :salon_spa,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        MEDICAL_DENTIST_OFFICE =
          T.let(
            :medical_dentist_office,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOTEL_LODGING =
          T.let(
            :hotel_lodging,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        AUTO_REPAIR_SHOP =
          T.let(
            :auto_repair_shop,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        MASTERMINDS =
          T.let(
            :masterminds,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        WEBINARS =
          T.let(
            :webinars,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        BOOTCAMPS =
          T.let(
            :bootcamps,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CONVENTION =
          T.let(
            :convention,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        CONCERTS =
          T.let(
            :concerts,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        MEETUPS =
          T.let(
            :meetups,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )
        PARTIES =
          T.let(
            :parties,
            Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::AccessPassRetrieveResponse::IndustryType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class OwnerUser < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user that owns the access pass (company owner).
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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
