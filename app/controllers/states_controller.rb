class StatesController < ApplicationController

    before_action :set_state, only: [:show, :edit, :update, :destroy]

    def index
        @states = State.all
        render json: @states, include:[:teams]
    end

    def show
        render json: @state
    end

    # def new
    #     @state = State.new
    # end

    def create
        @state = State.create(state_params)
        render json: @state
    end

    def edit
    end

    def update
        @state.update(state_params)
    end

    def destroy
        @state.destroy
        render json: @state
    end

    private

    def set_state
        @state = State.find(params[:id])
    end

    def state_params
        params.require(:state).permit(:name)
    end

end