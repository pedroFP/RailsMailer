
# Send Mails with [Sendinblue](https://www.sendinblue.com) and Rails

## Don't forget the basic setups
* run ``$ bundle install``
*  run ``$ rails db:migrate``

## Before starting
### This project is based on this [tutorial](https://medium.com/@nealgohel7/sending-transactional-mail-with-sendinblue-in-ruby-on-rails-64ca6b72cf22)
*	Create an account on [Sendinblue](https://www.sendinblue.com)
*	Download [ngrok](https://ngrok.com/) a command for an instant, secure URL to your localhost server.

Open the ngrok terminal and type ```ngrok https 3000``` And copy the https link)<br/>
This is because we don´t want to put our app on  heroku or other service so we can work locally.

So while the ```rails server``` is running  paste the link in your **Sendinblue** *account profile* where it says **Web Site**

## Configuring SMTP

According the tutorial where this project is made to, you can configure the smtp in ```production.rb``` or ```development.rb```, in this case I configured the smtp in the  ```development.rb``` file.

```
config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_deliveries = true

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {

    :address => ‘smtp-relay.sendinblue.com’,

    :port => 587,

    :user_name => ‘YOUR_SENDINBLUE_EMAIL’,

    :password => ‘YOUR_SENDINBLUE_PASSWORD’,

    :authentication => ‘login’,

    :enable_starttls_auto => true

  }
```
