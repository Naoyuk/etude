# frozen_string_literal: true

class ShipLabelController < ApplicationController
  def index
    @orders = Order.all

    respond_to do |format|
      format.html
      format.pdf do
        ship_label = ShipLabel.new(@orders)

        send_data ship_label.render,
          filename: "carton_label.pdf",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end
end
