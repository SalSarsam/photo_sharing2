ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "rubyonrails2014",
  :password             => "password2014",
  :authentication       => "plain",
  :enable_starttls_auto => true
}