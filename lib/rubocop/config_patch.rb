# frozen_string_literal: true

require "rubocop/config"

module RuboCopConfigRescue
  def reject_obsolete_cops_and_parameters
    super
  rescue RuboCop::ValidationError => e
    warn e.message
  end
end

RuboCop::Config.prepend RuboCopConfigRescue
