# frozen_string_literal: true

module WhopSDK
  module Models
    # The carrier of a shipment
    module ShipmentCarrier
      extend WhopSDK::Internal::Type::Enum

      ACCURATE = :accurate
      AMAZON_MWS = :amazon_mws
      AMAZON_SHIPPING = :amazon_shipping
      APC = :apc
      ASENDIA_USA = :asendia_usa
      AUSTRALIA_POST = :australia_post
      AXLEHIRE_V3 = :axlehire_v3
      BETTER_TRUCKS = :better_trucks
      CANADA_POST = :canada_post
      CANPAR = :canpar
      COLUMBUS_LAST_MILE = :columbus_last_mile
      CHRONOPOST = :chronopost
      CLOUD_SORT = :cloud_sort
      COURIER_EXPRESS = :courier_express
      COURIERS_PLEASE = :couriers_please
      CS_LOGISTICS = :cs_logistics
      DAI_POST = :dai_post
      DEUTSCHE_POST_UK = :deutsche_post_uk
      DEUTSCHE_POST = :deutsche_post
      DHL_ECOMMERCE_ASIA = :dhl_ecommerce_asia
      DHL_ECS = :dhl_ecs
      DHL_EXPRESS = :dhl_express
      DHL_PAKET = :dhl_paket
      DOOR_DASH = :door_dash
      DPD_NL = :dpd_nl
      DPD_UK = :dpd_uk
      DPD = :dpd
      EPOST_GLOBAL = :epost_global
      ESTAFETA = :estafeta
      EVRI = :evri
      FASTWAY = :fastway
      FEDEX_CROSS_BORDER = :fedex_cross_border
      FEDEX_DEFAULT = :fedex_default
      FEDEX_MAILVIEW = :fedex_mailview
      FEDEX_SMARTPOST = :fedex_smartpost
      FEDEX = :fedex
      FIRST_CHOICE = :first_choice
      FIRST_MILE = :first_mile
      FLEXPORT = :flexport
      GIO = :gio
      GIO_EXPRESS = :gio_express
      GSO = :gso
      HAILIFY = :hailify
      HENRY = :henry
      INTERLINK_EXPRESS = :interlink_express
      JET = :jet
      KURONEKO_YAMATO = :kuroneko_yamato
      LA_POST = :la_post
      LASERSHIP_V2 = :lasership_v2
      LOOMIS_EXPRESS = :loomis_express
      LSO = :lso
      ONTRAC = :ontrac
      OPTIMA = :optima
      OSM_WORLDWIDE = :osm_worldwide
      PARCELFORCE = :parcelforce
      PARCLL = :parcll
      PASSPORT_GLOBAL = :passport_global
      POST_NL = :post_nl
      PUROLATOR = :purolator
      QUICK = :quick
      ROYAL_MAIL = :royal_mail
      OMNI_PARCEL = :omni_parcel
      SENDLE = :sendle
      SF_EXPRESS = :sf_express
      SMART_KARGO = :smart_kargo
      SONIC = :sonic
      SPEE_DEE = :spee_dee
      SWYFT = :swyft
      TFORCE = :tforce
      UDS = :uds
      UPS_IPARCEL = :ups_iparcel
      UPS_MAIL_INNOVATIONS = :ups_mail_innovations
      UPS = :ups
      USPS = :usps
      VEHO = :veho
      YANWEN = :yanwen

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
