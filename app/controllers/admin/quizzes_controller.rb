class Admin::QuizzesController < ApplicationController
  #権限の設定、ログインしていないと指定以外のページを表示できないように
  before_action :authenticate_admin!
  
  def new
    @quiz = Quiz.new
  end
  
end
