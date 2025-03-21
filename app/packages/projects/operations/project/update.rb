# frozen_string_literal: true

module Projects
  class Project::Update < CommandHandler::Command
    class Form
      include CommandHandler::Form

      attribute :id, :integer
      attribute :name, :string
      attribute :description, :string
      attribute :type, :string
      attribute :reference_url, :string
      attribute :topics, default: []

      validates :id, :name, :description, :type, :topics, presence: true
      validates :type, inclusion: { in: Project::TYPES }

      def topics=(value)
        new_value = if value.is_a?(String)
                      (value || "").split(",").map(&:strip)
                    else
                      value
                    end

        super(new_value)
      end
    end

    delegate(*Form.new.attributes.keys, to: :form)

    def execute
      Project::Find
        .call(id:)
        .and_then do
          Project
            .find_by(id:)
            .update_with_response(name:, description:, type:, reference_url:, topics:)
            .and_then do |project|
              Response.success(project.to_struct)
            end
        end
    end
  end
end
