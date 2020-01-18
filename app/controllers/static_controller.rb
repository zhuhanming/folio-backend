class StaticController < ApplicationController
    def home
      render json: { status: "Hack&roll 2020: Backend is running" }
    end
end
