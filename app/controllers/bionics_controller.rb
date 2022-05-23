class BionicsController < ApplicationController

    def index
    end

    def view
        @text = params[:text]
    end
end
