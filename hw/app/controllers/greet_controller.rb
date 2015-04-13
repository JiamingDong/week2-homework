class GreetController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def display
      @salutation_value = params["salutation"]
      render "Hello"
  end
end
