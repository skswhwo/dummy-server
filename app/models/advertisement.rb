class Advertisement < ActiveRecord::Base

  
  scope :channel,  -> channel { where(channel: channel) }
  scope :audience_country,  -> audience_country { where(audience_country: audience_country) }
  scope :audience_language,  -> audience_language { where(audience_language: audience_language) }
  scope :expose_view,  -> expose_view { where(expose_view: expose_view) }
  scope :audience_roles, -> audience_roles { where("audience_roles like ?", "%"+audience_roles+"%") }
  scope :audience_grade, -> audience_grade { where("audience_grade_from < ? AND audience_grade_to > ?", audience_grade, audience_grade) }

end
