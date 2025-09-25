# typed: strong

module Whopsdk
  module Models
    class CompanyRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::CompanyRetrieveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The ID (tag) of the company.
      sig { returns(String) }
      attr_accessor :id

      # The type of business the company is.
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        )
      end
      attr_accessor :business_type

      # When the company was created (signed up)
      sig { returns(Integer) }
      attr_accessor :created_at

      # The specific industry the company operates in.
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        )
      end
      attr_accessor :industry_type

      # The number of members in the company.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The user who owns this company
      sig { returns(Whopsdk::Models::CompanyRetrieveResponse::OwnerUser) }
      attr_reader :owner_user

      sig do
        params(
          owner_user:
            Whopsdk::Models::CompanyRetrieveResponse::OwnerUser::OrHash
        ).void
      end
      attr_writer :owner_user

      # The number of reviews that have been published for the company.
      sig { returns(Integer) }
      attr_accessor :published_reviews_count

      # The slug/route of the company on the Whop site.
      sig { returns(String) }
      attr_accessor :route

      # The social media accounts of the company
      sig do
        returns(T::Array[Whopsdk::Models::CompanyRetrieveResponse::SocialLink])
      end
      attr_accessor :social_links

      # The title of the company.
      sig { returns(String) }
      attr_accessor :title

      # The time the company was last updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # If the company is Whop Verified
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An object representing a (sanitized) company.
      sig do
        params(
          id: String,
          business_type:
            T.nilable(
              Whopsdk::Models::CompanyRetrieveResponse::BusinessType::OrSymbol
            ),
          created_at: Integer,
          industry_type:
            T.nilable(
              Whopsdk::Models::CompanyRetrieveResponse::IndustryType::OrSymbol
            ),
          member_count: Integer,
          owner_user:
            Whopsdk::Models::CompanyRetrieveResponse::OwnerUser::OrHash,
          published_reviews_count: Integer,
          route: String,
          social_links:
            T::Array[
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::OrHash
            ],
          title: String,
          updated_at: Integer,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID (tag) of the company.
        id:,
        # The type of business the company is.
        business_type:,
        # When the company was created (signed up)
        created_at:,
        # The specific industry the company operates in.
        industry_type:,
        # The number of members in the company.
        member_count:,
        # The user who owns this company
        owner_user:,
        # The number of reviews that have been published for the company.
        published_reviews_count:,
        # The slug/route of the company on the Whop site.
        route:,
        # The social media accounts of the company
        social_links:,
        # The title of the company.
        title:,
        # The time the company was last updated.
        updated_at:,
        # If the company is Whop Verified
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_type:
              T.nilable(
                Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
              ),
            created_at: Integer,
            industry_type:
              T.nilable(
                Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
              ),
            member_count: Integer,
            owner_user: Whopsdk::Models::CompanyRetrieveResponse::OwnerUser,
            published_reviews_count: Integer,
            route: String,
            social_links:
              T::Array[Whopsdk::Models::CompanyRetrieveResponse::SocialLink],
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
              Whopsdk::Models::CompanyRetrieveResponse::BusinessType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EDUCATION_PROGRAM =
          T.let(
            :education_program,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        COACHING =
          T.let(
            :coaching,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        PAID_GROUP =
          T.let(
            :paid_group,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        NEWSLETTER =
          T.let(
            :newsletter,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        AGENCY =
          T.let(
            :agency,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        PHYSICAL_PRODUCTS =
          T.let(
            :physical_products,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        BRICK_AND_MORTAR =
          T.let(
            :brick_and_mortar,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        EVENTS =
          T.let(
            :events,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        COACHING_AND_COURSES =
          T.let(
            :coaching_and_courses,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        SAAS =
          T.let(
            :saas,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        COURSE =
          T.let(
            :course,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )
        COMMUNITY =
          T.let(
            :community,
            Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::CompanyRetrieveResponse::BusinessType::TaggedSymbol
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
              Whopsdk::Models::CompanyRetrieveResponse::IndustryType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRADING =
          T.let(
            :trading,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SPORTS_BETTING =
          T.let(
            :sports_betting,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        RESELLING =
          T.let(
            :reselling,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        FITNESS =
          T.let(
            :fitness,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        AMAZON_FBA =
          T.let(
            :amazon_fba,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :real_estate,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        KINDLE_BOOK_PUBLISHING =
          T.let(
            :kindle_book_publishing,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        DATING =
          T.let(
            :dating,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        AGENCIES =
          T.let(
            :agencies,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        HEALTH_AND_WELLNESS =
          T.let(
            :health_and_wellness,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SOCIAL_MEDIA =
          T.let(
            :social_media,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALES =
          T.let(
            :sales,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        ECOMMERCE =
          T.let(
            :ecommerce,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        VIDEO_GAMES =
          T.let(
            :video_games,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOME_SERVICES =
          T.let(
            :home_services,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        PUBLIC_SPEAKING =
          T.let(
            :public_speaking,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        PERSONAL_FINANCE =
          T.let(
            :personal_finance,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CAREERS =
          T.let(
            :careers,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        TRAVEL =
          T.let(
            :travel,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLIPPING =
          T.let(
            :clipping,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SPIRITUALITY =
          T.let(
            :spirituality,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        VAS =
          T.let(
            :vas,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        PERSONAL_DEVELOPMENT =
          T.let(
            :personal_development,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        MARKETING_AGENCY =
          T.let(
            :marketing_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALES_AGENCY =
          T.let(
            :sales_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        AI_AGENCY =
          T.let(
            :ai_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        DESIGN_AGENCY =
          T.let(
            :design_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        COACHING_AGENCY =
          T.let(
            :coaching_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        DEVELOPMENT_AGENCY =
          T.let(
            :development_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        RECRUITING_AGENCY =
          T.let(
            :recruiting_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CUSTOMER_SUPPORT_AGENCY =
          T.let(
            :customer_support_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLIPPING_AGENCY =
          T.let(
            :clipping_agency,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CLOTHING =
          T.let(
            :clothing,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SUPPLEMENTS =
          T.let(
            :supplements,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        BEAUTY_AND_PERSONAL_CARE =
          T.let(
            :beauty_and_personal_care,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        FITNESS_GEAR =
          T.let(
            :fitness_gear,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        ACCESSORIES =
          T.let(
            :accessories,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOME_GOODS =
          T.let(
            :home_goods,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        ELECTRONICS_AND_GADGETS =
          T.let(
            :electronics_and_gadgets,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        FOOD_AND_BEVERAGES =
          T.let(
            :food_and_beverages,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        GYM =
          T.let(
            :gym,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        RESTAURANT =
          T.let(
            :restaurant,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        RETAIL_STORE =
          T.let(
            :retail_store,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        COFFEE_SHOP =
          T.let(
            :coffee_shop,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        SALON_SPA =
          T.let(
            :salon_spa,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        MEDICAL_DENTIST_OFFICE =
          T.let(
            :medical_dentist_office,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        HOTEL_LODGING =
          T.let(
            :hotel_lodging,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        AUTO_REPAIR_SHOP =
          T.let(
            :auto_repair_shop,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        MASTERMINDS =
          T.let(
            :masterminds,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        WEBINARS =
          T.let(
            :webinars,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        BOOTCAMPS =
          T.let(
            :bootcamps,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CONVENTION =
          T.let(
            :convention,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        CONCERTS =
          T.let(
            :concerts,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        MEETUPS =
          T.let(
            :meetups,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )
        PARTIES =
          T.let(
            :parties,
            Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::CompanyRetrieveResponse::IndustryType::TaggedSymbol
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
              Whopsdk::Models::CompanyRetrieveResponse::OwnerUser,
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

        # The user who owns this company
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

      class SocialLink < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID
        sig { returns(String) }
        attr_accessor :id

        # The URL
        sig { returns(String) }
        attr_accessor :url

        # The website
        sig do
          returns(
            T.nilable(
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          )
        end
        attr_accessor :website

        # A social link attached to a resource on the site.
        sig do
          params(
            id: String,
            url: String,
            website:
              T.nilable(
                Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID
          id:,
          # The URL
          url:,
          # The website
          website:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              url: String,
              website:
                T.nilable(
                  Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # The website
        module Website
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          X =
            T.let(
              :x,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          INSTAGRAM =
            T.let(
              :instagram,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          FACEBOOK =
            T.let(
              :facebook,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          TIKTOK =
            T.let(
              :tiktok,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          YOUTUBE =
            T.let(
              :youtube,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          LINKEDIN =
            T.let(
              :linkedin,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          TWITCH =
            T.let(
              :twitch,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )
          WEBSITE =
            T.let(
              :website,
              Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::CompanyRetrieveResponse::SocialLink::Website::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
