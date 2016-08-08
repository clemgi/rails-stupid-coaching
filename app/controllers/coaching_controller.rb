class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = ask_question(@query)
  end

  def ask
  end

  def ask_question(query)
    if query.upcase == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif query.include? "?"
      "Silly question, get dressed and go to work!"
    elsif query == "I am going to work right now!"
      ""
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
