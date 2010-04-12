# Default url mappings are:
#  a controller called Main is mapped on the root of the site: /
#  a controller called Something is mapped on: /something
# If you want to override this, add a line like this inside the class
#  map '/otherurl'
# this will force the controller to be mounted on: /otherurl

class MainController < DefaultController
  # the index action is called automatically when no other action is specified
  def index
    @title = "Welcome to Ramaze!"
    # if logged in? redirect to clip form
    # else redirect to login form
  end

  def clip
    # render clip form
    # clip form consists of text area, persist checkbox, submit button
    # v2: also render clip history
    # v2: clip history shows sample of 5 latest clips, link to clip_history page
  end

  # v2
  def clip_history
    # shows list of all clips, allows deletions
  end

  def login
    # login form asks for apikey from phone
    # if given, shows clip form without persist option
    # v2: optional registration for persistent clips
    #     if you register, you can save clips to a history
  end

  # the string returned at the end of the function is used as the html body
  # if there is no template for the action. if there is a template, the string
  # is silently ignored
  def notemplate
    "there is no 'notemplate.xhtml' associated with this action"
  end
end
