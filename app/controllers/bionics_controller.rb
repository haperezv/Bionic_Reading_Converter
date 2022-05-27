class BionicsController < ApplicationController
    before_action :set_bionic, only: [:show, :edit, :update]

    def index
        @bionic = Bionic.all 
    end

    def new
       @bionic = Bionic.new
    end

    def  show
    end

    def edit
    end   

    def create
        @bionic = Bionic.create bionic_params
        request = BionicService.new
        response = request.execute( bionic_params[:text_initial])
        @bionic.text_converted = response.encode('utf-8', invalid: :replace, undef: :replace, replace: '_')
        @bionic.save
        redirect_to bionic_path(@bionic)
    end

    def update
        #debugger
        @bionics.update bionic_params
        redirect_to bionics_path
    end

    def destroy
        @bionics = Bionic.find(params[:id])
        @bionics.destroy
        redirect_to bionics_path, status: :see_other
    end

    private

    def bionic_params
       params.require(:bionic).permit(:text_initial, :text_converted)
    end

    def set_bionic
        @bionics = Bionic.find(params[:id])
    end

end
