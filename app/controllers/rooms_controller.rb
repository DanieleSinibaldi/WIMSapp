class RoomsController < ApplicationController
    before_action :set_room, only: [:show, :update]

    # GET /places
    def places
        @listOfPlaces = Room.select(:place).distinct.order(place: :asc)
        json_response(@listOfPlaces)
    end

    # GET /places/:a_place
    def a_place
        #@listOfRooms = Room.where(place: "#{params[:a_place]}")
        @listOfRooms = Room.where("place = ?", params[:a_place]).order(:name)
        json_response(@listOfRooms)
    end

    # GET /rooms
    def index
        @listOfRooms = Room.all.order(:id)
        json_response(@listOfRooms)
    end

    # GET /rooms/:id
    def show
        json_response(@room)
    end

    # PUT /rooms/:id
    def update
        @room.update(room_params)
        head :no_content
    end


    private

    def room_params
    # whitelist params
        params.permit(:occupation)
    end

    def set_room
        @room = Room.find(params[:id])
    end
end
