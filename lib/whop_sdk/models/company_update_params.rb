# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#update
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute affiliate_application_required
      #   Whether prospective affiliates must submit an application before they can
      #   promote this company.
      #
      #   @return [Boolean, nil]
      optional :affiliate_application_required, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute affiliate_instructions
      #   Guidelines and instructions shown to affiliates explaining how to promote this
      #   company's products.
      #
      #   @return [String, nil]
      optional :affiliate_instructions, String, nil?: true

      # @!attribute banner_image
      #   The company's banner image. Accepts PNG or JPEG format.
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil]
      optional :banner_image, -> { WhopSDK::CompanyUpdateParams::BannerImage }, nil?: true

      # @!attribute description
      #   A promotional pitch displayed to potential customers on the company's store
      #   page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute featured_affiliate_product_id
      #   The ID of the product to feature on this company's affiliate page. Pass null to
      #   clear.
      #
      #   @return [String, nil]
      optional :featured_affiliate_product_id, String, nil?: true

      # @!attribute logo
      #   The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyUpdateParams::Logo }, nil?: true

      # @!attribute route
      #   The unique URL slug for the company's store page. Must be lowercase and can
      #   include hyphens (e.g., 'my-company'). If not provided, the route will remain
      #   unchanged.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      #   customers on behalf of this company.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute social_links
      #   The social media links to display on the company's store page. Pass the full
      #   list of desired social links — any existing links not included will be removed.
      #
      #   @return [Array<WhopSDK::Models::CompanyUpdateParams::SocialLink>, nil]
      optional :social_links,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CompanyUpdateParams::SocialLink] },
               nil?: true

      # @!attribute target_audience
      #   The target audience for this company (e.g., 'beginner day traders aged 18-25
      #   looking to learn options').
      #
      #   @return [String, nil]
      optional :target_audience, String, nil?: true

      # @!attribute title
      #   The display name of the company shown to customers.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(id:, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, description: nil, featured_affiliate_product_id: nil, logo: nil, route: nil, send_customer_emails: nil, social_links: nil, target_audience: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param affiliate_application_required [Boolean, nil] Whether prospective affiliates must submit an application before they can promot
      #
      #   @param affiliate_instructions [String, nil] Guidelines and instructions shown to affiliates explaining how to promote this c
      #
      #   @param banner_image [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil] The company's banner image. Accepts PNG or JPEG format.
      #
      #   @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      #   @param featured_affiliate_product_id [String, nil] The ID of the product to feature on this company's affiliate page. Pass null to
      #
      #   @param logo [WhopSDK::Models::CompanyUpdateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @param route [String, nil] The unique URL slug for the company's store page. Must be lowercase and can incl
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails (receipts, renewals, cancelations) to cu
      #
      #   @param social_links [Array<WhopSDK::Models::CompanyUpdateParams::SocialLink>, nil] The social media links to display on the company's store page. Pass the full lis
      #
      #   @param target_audience [String, nil] The target audience for this company (e.g., 'beginner day traders aged 18-25 loo
      #
      #   @param title [String, nil] The display name of the company shown to customers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's banner image. Accepts PNG or JPEG format.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's logo image. Accepts PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class SocialLink < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   The URL of the social link
        #
        #   @return [String]
        required :url, String

        # @!attribute website
        #   The website this link is for
        #
        #   @return [Symbol, WhopSDK::Models::SocialLinkWebsites]
        required :website, enum: -> { WhopSDK::SocialLinkWebsites }

        # @!attribute image
        #   The custom image for the social link
        #
        #   @return [WhopSDK::Models::CompanyUpdateParams::SocialLink::Image, nil]
        optional :image, -> { WhopSDK::CompanyUpdateParams::SocialLink::Image }, nil?: true

        # @!attribute order
        #   The order of the social link
        #
        #   @return [String, nil]
        optional :order, String, nil?: true

        # @!attribute title
        #   The title of the social link
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute website_order
        #   The order of the website social link
        #
        #   @return [String, nil]
        optional :website_order, String, nil?: true

        # @!method initialize(url:, website:, image: nil, order: nil, title: nil, website_order: nil)
        #   Input for creating a social link for a company
        #
        #   @param url [String] The URL of the social link
        #
        #   @param website [Symbol, WhopSDK::Models::SocialLinkWebsites] The website this link is for
        #
        #   @param image [WhopSDK::Models::CompanyUpdateParams::SocialLink::Image, nil] The custom image for the social link
        #
        #   @param order [String, nil] The order of the social link
        #
        #   @param title [String, nil] The title of the social link
        #
        #   @param website_order [String, nil] The order of the website social link

        # @see WhopSDK::Models::CompanyUpdateParams::SocialLink#image
        class Image < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing file object.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The custom image for the social link
          #
          #   @param id [String] The ID of an existing file object.
        end
      end
    end
  end
end
