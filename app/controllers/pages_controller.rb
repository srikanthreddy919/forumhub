class PagesController < ApplicationController
  def index
    @pagy, @questions = pagy(Question.order("id DESC"), items: 20)
  end
end
