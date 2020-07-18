class ThoughtsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @thoughts = Thought.all
    end

    def new
        @thought = current_user.thoughts.build
    end

    def create
        @thought = current_user.thoughts.build(thought_params)

        if @thought.save
            redirect_to thoughts_path
        else 
            redirect_to new_thoughts_path
        end
    end

    private 
    def thought_params
        params.require(:thought).permit(:title, :body)
    end
end
