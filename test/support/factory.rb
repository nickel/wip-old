# frozen_string_literal: true

module Factory
  module_function

  def generate_project(**input)
    Projects::Project::Create
      .call(**{ name: "My wonderful project",
                description: "Lorem ipsum dolor sit amet",
                type: "service",
                topics: ["Ruby", "Ruby on Rails"] }.merge(input))
      .value!
  end
end
