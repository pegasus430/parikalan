class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def get_website_id_from_base_url(base_url)
    @wesbite_id ||= Website.get_id_from_base_url(base_url)
  end

  def made_by_human?
  	return true if recaptha_humanity_score > 0.5
  	return false
  end

end
