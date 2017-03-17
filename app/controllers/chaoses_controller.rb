class ChaosesController < ApplicationController
  def index
    @msg = "선택하세요"
  end
  def show
    @msg = "선택하세요"
    @list = [nil,"일어나암사자처럼울기",
                 "지렁이처럼기어다니기",
                 "단체로벽잡고광춤추기",
                 "춤추며곰세마리부르기",
                 "조성국씨모자뺏어쓰기",]
  end
end
