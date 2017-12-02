# frozen_string_literal: true
# encoding: UTF-8

require_relative './base_command'

module Firby
  module KeyCommand
    class SingleKeyCommand < BaseCommand
      def self.char_code
        # Matches all printable ASCII characters
        /[ -~]/
      end

      def execute_hook(new_state)
        new_state.lines[-1] = state.lines[-1].clone.push(character)
        new_state.cursor = state.cursor.right(1)
        new_state
      end
    end
  end
end