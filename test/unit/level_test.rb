require 'test_helper'

class LevelTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "los atributos de Level deben ser requeridos" do
    level = Level.new
    assert level.invalid?
    assert level.errors[:name].any?
  end
end