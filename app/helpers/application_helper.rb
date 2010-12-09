module ApplicationHelper

  def phone_number
    "1-888-783-1438"
  end

  def n
    raw "<span class='name'>Awesome CRM</span>"
  end

  def check
    raw '<img src="images/check.png" alt="Included" />'
  end

  def x
    raw '<img src="images/x.png" alt="Not Included" />'
  end

end
