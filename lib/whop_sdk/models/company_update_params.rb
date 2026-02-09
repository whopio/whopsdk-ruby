# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#update
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute banner_image
      #   The banner image for the company in png or jpeg format
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil]
      optional :banner_image, -> { WhopSDK::CompanyUpdateParams::BannerImage }, nil?: true

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute description
      #   A description of what the company offers or does.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The logo for the company in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyUpdateParams::Logo }, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #   Includes: order confirmations, payment failures, refund notifications, upcoming
      #   renewals, and membership cancelations/expirations. When disabled, the platform
      #   is responsible for handling these communications.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute title
      #   The title of the company
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(banner_image: nil, business_type: nil, description: nil, industry_type: nil, logo: nil, send_customer_emails: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyUpdateParams} for more details.
      #
      #   @param banner_image [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil] The banner image for the company in png or jpeg format
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param description [String, nil] A description of what the company offers or does.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyUpdateParams::Logo, nil] The logo for the company in png, jpeg, or gif format
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @param title [String, nil] The title of the company
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The banner image for the company in png or jpeg format
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
        #   The logo for the company in png, jpeg, or gif format
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
