module ComtsHelper
def formatted_date(date)
    date.strftime(" in comt - %d %b %Y")
  end
'  def toggle_like_button(comt, user)
    if user.flagged? (comt, :like)
    	link_to "Unlike", like_comt_path(comt)
    else
    	link_to "Like", like_comt_path(comt)
   end'
end
     