Rails.application.routes.draw do
  # CHALLENGE 1
  get '/greet', controller:'greet', action:'display'
  # CHALLENGE 2
  get '/contact', controller:'contact', action:'present_contact_form'
  get '/contact_submitted', controller:'contact', action:'submit_form_contact'
  # CHALLENGE 3
  get '/rps', controller:'rpsgame', action:'rps'
  get '/rps/result', controller:'rpsgame', action:'display'
  # CHALLENGE 4
  get '/dice', controller:'dicegame', action:'roll_to_start'
  get '/dice/roll', controller:'dicegame', action:'roll'
end
