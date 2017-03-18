class Team < ApplicationRecord
  serialize :member,Array
  def self.match
    members = ["이종원", "조상연", "조성국", "이상효", "전태훈", "송예균", "최재필", "허용회", "심시은", "정삼웅", "박소현", "권우정","안윤하", "정광현", "이진호", "정여진", "장민서", "김희재", "김준엽", "이동건"]
    members.shuffle!
    [1,2,3,4].each do |n|
      team = Team.find(n)
      team.member = members[(5*(n-1))..(5*n-1)]
      team.save
    end
  end

  def self.add(name)
    team = Team.find_by_name(name)
    team.score += 1
    team.save
  end
end
