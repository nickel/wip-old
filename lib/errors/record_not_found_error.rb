# frozen_string_literal: true

module Errors
  class RecordNotFoundError < Errors::Error
    def self.build(form: CommandHandler::Form.build)
      super(
        code: :record_not_found,
        message: "Record not found in DB",
        data: CommandHandler::Form.build(form.attributes)
      )
    end
  end
end
