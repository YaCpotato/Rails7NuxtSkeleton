# frozen_string_literal: true

class Newspapers::EditFormComponent < ViewComponent::Base
  def initialize(newspaper:)
    @newspaper = newspaper
  end
end
