# frozen_string_literal: true

class Project::Find < CommandHandler::Command
  class Form
    include CommandHandler::Form

    attribute :id, :integer
  end

  delegate(*Form.new.attributes.keys, to: :form)

  def call
    if (project = Project.find_by(id:))
      Response.success(project.to_struct)
    else
      Response.failure(
        Errors::RecordNotFoundError
          .build(form:)
      )
    end
  end
end
