# typed: strong

module WhopSDK
  module Models
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Whether prospective affiliates must submit an application before they can
      # promote this company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :affiliate_application_required

      # Guidelines and instructions shown to affiliates explaining how to promote this
      # company's products.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_instructions

      # The company's banner image. Accepts PNG or JPEG format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # A promotional pitch displayed to potential customers on the company's store
      # page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The ID of the product to feature on this company's affiliate page. Pass null to
      # clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :featured_affiliate_product_id

      # The company's logo image. Accepts PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CompanyUpdateParams::Logo)) }
      attr_reader :logo

      sig do
        params(logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash)).void
      end
      attr_writer :logo

      # The unique URL slug for the company's store page. Must be lowercase and can
      # include hyphens (e.g., 'my-company'). If not provided, the route will remain
      # unchanged.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      # customers on behalf of this company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :send_customer_emails

      # The social media links to display on the company's store page. Pass the full
      # list of desired social links — any existing links not included will be removed.
      sig do
        returns(T.nilable(T::Array[WhopSDK::CompanyUpdateParams::SocialLink]))
      end
      attr_accessor :social_links

      # The target audience for this company (e.g., 'beginner day traders aged 18-25
      # looking to learn options').
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the company shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          id: String,
          affiliate_application_required: T.nilable(T::Boolean),
          affiliate_instructions: T.nilable(String),
          banner_image:
            T.nilable(WhopSDK::CompanyUpdateParams::BannerImage::OrHash),
          description: T.nilable(String),
          featured_affiliate_product_id: T.nilable(String),
          logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo::OrHash),
          route: T.nilable(String),
          send_customer_emails: T.nilable(T::Boolean),
          social_links:
            T.nilable(
              T::Array[WhopSDK::CompanyUpdateParams::SocialLink::OrHash]
            ),
          target_audience: T.nilable(String),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Whether prospective affiliates must submit an application before they can
        # promote this company.
        affiliate_application_required: nil,
        # Guidelines and instructions shown to affiliates explaining how to promote this
        # company's products.
        affiliate_instructions: nil,
        # The company's banner image. Accepts PNG or JPEG format.
        banner_image: nil,
        # A promotional pitch displayed to potential customers on the company's store
        # page.
        description: nil,
        # The ID of the product to feature on this company's affiliate page. Pass null to
        # clear.
        featured_affiliate_product_id: nil,
        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        logo: nil,
        # The unique URL slug for the company's store page. Must be lowercase and can
        # include hyphens (e.g., 'my-company'). If not provided, the route will remain
        # unchanged.
        route: nil,
        # Whether Whop sends transactional emails (receipts, renewals, cancelations) to
        # customers on behalf of this company.
        send_customer_emails: nil,
        # The social media links to display on the company's store page. Pass the full
        # list of desired social links — any existing links not included will be removed.
        social_links: nil,
        # The target audience for this company (e.g., 'beginner day traders aged 18-25
        # looking to learn options').
        target_audience: nil,
        # The display name of the company shown to customers.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            affiliate_application_required: T.nilable(T::Boolean),
            affiliate_instructions: T.nilable(String),
            banner_image: T.nilable(WhopSDK::CompanyUpdateParams::BannerImage),
            description: T.nilable(String),
            featured_affiliate_product_id: T.nilable(String),
            logo: T.nilable(WhopSDK::CompanyUpdateParams::Logo),
            route: T.nilable(String),
            send_customer_emails: T.nilable(T::Boolean),
            social_links:
              T.nilable(T::Array[WhopSDK::CompanyUpdateParams::SocialLink]),
            target_audience: T.nilable(String),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::BannerImage,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's banner image. Accepts PNG or JPEG format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::Logo,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The company's logo image. Accepts PNG, JPEG, or GIF format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CompanyUpdateParams::SocialLink,
              WhopSDK::Internal::AnyHash
            )
          end

        # The URL of the social link
        sig { returns(String) }
        attr_accessor :url

        # The website this link is for
        sig { returns(WhopSDK::SocialLinkWebsites::OrSymbol) }
        attr_accessor :website

        # The custom image for the social link
        sig do
          returns(T.nilable(WhopSDK::CompanyUpdateParams::SocialLink::Image))
        end
        attr_reader :image

        sig do
          params(
            image:
              T.nilable(WhopSDK::CompanyUpdateParams::SocialLink::Image::OrHash)
          ).void
        end
        attr_writer :image

        # The order of the social link
        sig { returns(T.nilable(String)) }
        attr_accessor :order

        # The title of the social link
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # The order of the website social link
        sig { returns(T.nilable(String)) }
        attr_accessor :website_order

        # Input for creating a social link for a company
        sig do
          params(
            url: String,
            website: WhopSDK::SocialLinkWebsites::OrSymbol,
            image:
              T.nilable(
                WhopSDK::CompanyUpdateParams::SocialLink::Image::OrHash
              ),
            order: T.nilable(String),
            title: T.nilable(String),
            website_order: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL of the social link
          url:,
          # The website this link is for
          website:,
          # The custom image for the social link
          image: nil,
          # The order of the social link
          order: nil,
          # The title of the social link
          title: nil,
          # The order of the website social link
          website_order: nil
        )
        end

        sig do
          override.returns(
            {
              url: String,
              website: WhopSDK::SocialLinkWebsites::OrSymbol,
              image: T.nilable(WhopSDK::CompanyUpdateParams::SocialLink::Image),
              order: T.nilable(String),
              title: T.nilable(String),
              website_order: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Image < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CompanyUpdateParams::SocialLink::Image,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing file object.
          sig { returns(String) }
          attr_accessor :id

          # The custom image for the social link
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing file object.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
