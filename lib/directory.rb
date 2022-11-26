# frozen_string_literal: true

require "csv"
require "colorize"
require_relative "dir_data_input"
require_relative "dir_filters"
require_relative "dir_menu"
require_relative "dir_outputs"
require_relative "dir_saving"

@students = []

try_load_students
interactive_menu
