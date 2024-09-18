require "nokogiri"
require "json"

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ("a".."z").to_a.sample }
  end

  def score
    @suggestion = params[:suggestion]
    @letters_ar = params[:letters].chars
    @letters_array = @letters_ar.reject { |element| element.to_s.strip.empty? }
  end
end
