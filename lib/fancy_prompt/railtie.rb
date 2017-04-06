module FancyPrompt
  class Railtie < Rails::Railtie
    initializer "fancy_prompt.initialize" do |app|
      Pry.config.prompt = Pry::DEFAULT_PROMPT
      env = Rails.env.to_s
      env = "dev" if env == 'development'
      env = "prod" if env == 'production'
      Pry.config.prompt_name = "#{Rails.application.class.parent_name.downcase}|#{env}"
    end
  end
end
