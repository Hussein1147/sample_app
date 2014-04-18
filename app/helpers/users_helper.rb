module UsersHelper
  def gravatar_for (user, options={ :size =>50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    gravatar_image_tag(user.email.downcase, :alt => user.name,
                                            :class => 'gravatar profile-img',
                                            :gravatar => options)
  end
                                          
end
