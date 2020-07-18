class ThoughtsController < ApplicationController
    def index
        @thoughts = Thought.all
    end

    def new
        @thought = Thought.new
    end

    def create
        @thought = Thought.new(thought_params)

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
