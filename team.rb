class Team
  attr_accessor :name, :win, :lose, :draw

  def initialize( name, win, lose, draw )
    self.name = name
    self.win  = win
    self.lose = lose
    self.draw = draw
  end

  def calc_win_rate()
    win_and_lose = self.win + self.lose
    self.win.to_f / win_and_lose.to_f
  end
  
  def show_team_result()
    res = self.name + " の2020年の成績は " + self.win.to_s + "勝 " + self.lose.to_s + "敗 " + self.draw.to_s + "分、勝率は " + self.calc_win_rate.to_s + "です。"
    puts res
  end
end

term_G = Team.new('Giants', 67, 45, 8)
term_T = Team.new('Tigers', 60, 53, 7)
term_D = Team.new('Dragons', 60, 55, 5)
term_B = Team.new('BayStars', 56, 58, 6)
term_C = Team.new('Carp', 52, 56, 12)
term_S = Team.new('Swallows', 41, 69, 10)

term_G.show_team_result
term_T.show_team_result
term_D.show_team_result
term_B.show_team_result
term_C.show_team_result
term_S.show_team_result