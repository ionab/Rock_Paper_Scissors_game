require("minitest/autorun")
require ("minitest/rg")

require_relative("../game.rb")


class TestGame < MiniTest::Test
  def setup()
    @play1 = Game.new()
  end

  def test_result__rock_beats_sissors__sissors_first()
    assert_equal("rock wins!", @play1.play("scissors", "rock"))
  end
  def test_result__rock_beats_scissors__rock_first()
    assert_equal("rock wins!", @play1.play("rock", "scissors"))
  end
  def test_result__paper_beats_rock_paper_first()
    assert_equal("paper wins!", @play1.play("paper", "rock"))
  end
  def test_result__paper_beats_rock_rock_first()
    assert_equal("paper wins!", @play1.play("rock", "paper"))
  end
  def test_result__scissors_beats_paper_scissors_first()
    assert_equal("scissors wins!", @play1.play("scissors", "paper"))
  end
  def test_result__scissors_beats_paper_paper_first()
    assert_equal("scissors wins!", @play1.play("paper", "scissors"))
  end
  def test_result__draw_scissors()
    assert_equal("draw", @play1.play("scissors", "scissors"))
  end
  def test_result__draw_paper()
    assert_equal("draw", @play1.play("paper", "paper"))
  end
  def test_result__draw_rock()
    assert_equal("draw", @play1.play("rock", "rock"))
  end

end
