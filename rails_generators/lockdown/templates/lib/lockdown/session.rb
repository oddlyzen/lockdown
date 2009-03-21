#
#                           !!!!IMPORTANT!!!!
#
#*** MUST define a current_user method that will return the current user object
#
#*** MUST define a logged_in? method that will return true if a user is logged in
#
#*** MUST add call to add_lockdown_session_values to your login method
#
#   # This method uses the current_user method.
#   add_lockdown_session_values
#
#
#                       ~~~~Method Descriptions~~~~

# The Lockdown gem defines these session methods:
#
#  current_user_id: returns the id of the current_user
#
#  current_user_is_admin?: returns true if user is assigned 
#  administrator rights.
#
#  nil_lockdown_values:  This will nil the following session values:
#     current_user_id
#     access_rights
#     expiry_time
#
#  current_user_access_in_group?(grp):  grp is a symbol referencing a 
#  Lockdown::UserGroups method such as :registered_users
#  Will return true if the session[:access_rights] contain at 
#  least one match to the access_right list associated to the group
#

ActionController::Base.class_eval do
  include Lockdown::Session
end
