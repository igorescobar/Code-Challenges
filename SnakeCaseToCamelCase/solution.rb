class String

  # "snake_case"   => "snakeCase"
  # "snakeCase"   => "snakeCase"
  # "camel_case_string" => "camel_case_string"

  def camel
      gsub(/(_)(.)/) { |m| m.upcase }.gsub('_', '')
    rescue
      self
  end
end
