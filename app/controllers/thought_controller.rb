class ThoughtController < ApplicationController
    def index
        @thoughts = Thought.all
    end
end
