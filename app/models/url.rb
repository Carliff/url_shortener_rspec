class Url < ActiveRecord::Base
	validates :long_url, presence: true, format: URI::regexp(%w(http https))
	validates :short_url, presence:true, uniqueness: true

	def self.reterive_short_url(long_url)
    url = Url.find_by(:long_url => long_url )

    if url == nil
      return nil
    else
      return url.short_url
    end
  end
end
