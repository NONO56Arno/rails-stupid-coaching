class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:response]
    if @question =~ /i'm going to work/i
      @returned = 'Great!'
    elsif @question.end_with?('?')
      @returned = 'Silly question, get dressed and go to work!'
    else
      @returned = "I don't care, get dressed and go to work!"
    end
  end
end
