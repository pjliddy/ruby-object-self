# frozen_string_literal: true

# Define a Person class
class Person
  # getter for status
  attr_reader :status
  # attr_accessor :status

  def initialize
    # @status = nil by default on initialize
    @status = nil
  end

  # this is the custom setter for status
  # not using attr_writer or attr_accessor

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    # puts "Status changed to #{status}"
    %x(`say "Status changed to #{status}"`)
  end

  def log_in
    # set status using internal setter method
    self.status = 'online'
  end

  def log_out
    # set status by modifying local variable
    # doesn't run set status method
    # should use it's own setter instead of changing @status directly

    @status = 'offline'
    %x(`say "Game Over Man"`)
  end
end
