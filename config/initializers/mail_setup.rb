ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "http://afterhourscliq.herokuapp.com",
  #:domain               => "localhost:3000",
  :user_name            => "donotreply.mailme@gmail.com",
  :password             => "Bekham@2",
  :authentication       => "plain",
  :enable_starttls_auto => true
}