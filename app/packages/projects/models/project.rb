# frozen_string_literal: true

module Projects
  class Project < ApplicationRecord
    Project.inheritance_column = "not-used-column"

    TYPES = %w(service library challenge).freeze

    def to_struct
      CustomStruct
        .new(attributes)
    end
  end
end
