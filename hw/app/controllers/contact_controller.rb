class ContactController < ApplicationController
  
  def present_form_contact
    render "present_form_contact"
  end
  
  def submit_form_contact
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    render "contact_submitted"
  end
  
end