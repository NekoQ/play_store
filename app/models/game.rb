class Game < ApplicationRecord
  after_create :generate_url

  private

  def generate_url
    url = Base64.encode64("game:#{id}").chomp
    update_attribute(:url, url)
  end
end
