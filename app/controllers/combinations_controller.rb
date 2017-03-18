class CombinationsController < ApplicationController
  def index
    @msg = "선택하세요"
  end

  def show
    answer = [[379,478,346],[345,247,567],[269,468,578,127],[289,478,159],[126,189]]
    if params[:answer] == "결"
      if Combination.find(params[:id]).answer.length / 3 == Combination.find(params[:id]).len
        team = Team.find_by_name(params[:name])
        team.score += 3
        if team.save
          @bool = true
          @msg = "결 " + params[:name] + " +3점" + "=>" + team.score.to_s + "점"
        end
      else
        @bool = false
      end
    elsif false
      answer[params[:id].to_i-1].each do |a|
        if params[:answer].to_i == a
          team = Team.find_by_name(params[:name])
          team.score += 1
          if team.save
            @msg = "정답 " + params[:name] + " +1점" + "=>" + team.score.to_s + "점"
            @bool = true
            comb = Combination.find(params[:id])
            comb.answer += (params[:answer])
            comb.save
          end
        end
      end
    end

    if !@bool and params[:answer].present?
      team = Team.find_by_name(params[:name])
      team.score -= 1
      if team.save
        @msg = "오답 " + params[:name] + " -1점" + "=>" + team.score.to_s + "점"
      end
    end

    @answers = Combination.find(params[:id]).answer
  end
end
