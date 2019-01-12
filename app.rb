require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename=params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square=@params[:number].to_i*@params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number=@params[:number].to_i
    @phrase=@params[:phrase]
    @result=""
    @number.times do
      @result+=" #{@phrase}"
    end
    @result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase=@params[:word1]+" "+@params[:word2]+" "+@params[:word3]+" "+@params[:word4]+" "+@params[:word5]+"."
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @operation=@params[:operation]
    @operand1=@params[:number1].to_i
    @operand2=@params[:number2].to_i
    @result=1
    case @operation
      when "add"
        @result=@operand1+@operand2
      when "subtract"
        @result=@operand1-@operand2
      when "multiply"
        @result=@operand1*@operand2
      when "divide"
        @result=@operand1/@operand2
    end

    "#{@result}"

  end

end
