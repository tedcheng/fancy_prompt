require "fancy_prompt/version"

module FancyPrompt

end

if defined?(Rails::Console) && defined?(Pry)
  Pry.config.prompt = Pry::DEFAULT_PROMPT
  env = Rails.env.to_s
  env = "dev" if env == 'development'
  env = "prod" if env == 'production'
  Pry.config.prompt_name = "#{Rails.application.class.parent_name.downcase}|#{env}"
end

