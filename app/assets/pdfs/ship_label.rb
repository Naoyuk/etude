# frozen_string_literal: true

class ShipLabel < Prawn::Document
  def initialize(order)
    super(
      page_size: 'A4',
      page_layout: :portrait,
      top_margin: 20,
      bottom_margin: 20,
      left_margin: 20,
      right_margin: 20
    )

    @order = order[0]

    stroke_axis

    ship_from_address
    ship_to_address
    move_down 20
    order_details
  end

  def ship_from_address
    bounding_box([0, 780], :width => 260, :height => 100){
      stroke_bounds

      text "Ship From:", style: :bold
      text "Canadian Choice Wholesalers Limited(Non co-op)"
      text "8188 River Way"
      text "Delta, BC"
      text "Canada, V4G 1K5"
    }

  end

  def ship_to_address
    bounding_box([260, 780], :width => 260, :height => 100){
      stroke_bounds

      text "Ship To:", style: :bold
      text "Amazon.com, YHM1"
      text "110 Aeropark Blvd"
      text "MOUNT HOPE,"
      text "Canada, L0R 1W1"
    }
  end

  def order_details
    text "PO#: #{@order.id}"
  end
end
