class String

  # "camelCaseString"   => "camel_case_string"
  # "CamelCaseString"   => "camel_case_string"
  # "camel_case_string" => "camel_case_string"

  def snake_case
    snake_str = []
    self.each_char do |c|
      if c == " "
        snake_str << "_"
      elsif c.upcase == c && c != "_" && snake_str.size > 0
        snake_str << "_#{c.downcase}"
      else
        snake_str << c
      end
    end
    (snake_str.join "").downcase
  end

  # "camelCaseString"   => "camel_case_string"
  # "CamelCaseString"   => "camel_case_string"
  # "camel_case_string" => "camel_case_string"
  def snake_case2
      (self.gsub! /(.)([A-Z])/, '\1_\2').downcase
    rescue
      self
  end
end
