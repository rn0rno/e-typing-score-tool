class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end

  def new
    @score_json = ScoreJson.new
    @scores = Score.all
  end

  def edit; end

  def create
    score = new_score

    if score.save
      redirect_to new_score_path
    end
  end

  def update; end

  def destroy; end

  private

    def score_params
      params.require(:score_json).permit(:text)
    end

    # @todo refacturing
    def new_score
      score = Score.new

      logger.debug(score_params[:text])
      json = JSON.parse(score_params[:text])

      score.score = json['スコア']
      score.input_time = json['入力時間']
      score.correct = json['入力文字数']
      score.miss = json['ミス入力数']
      score.wpm = json['WPM']

      # @todo validation of level by wpm
      level = Level.find_by(name: json['レベル'])
      raise '存在しないレベルです' if level.nil?
      score.level_id = level.id

      accuracy = json['正確率'].tr('%', '').to_f
      accuracy /= 100 if accuracy > 0
      score.accuracy = accuracy

      weak_keys = json['苦手キー'].split
      weak_keys.each do |key|
        score.weak_keys << WeakKey.find_or_create_by(character: key)
      end

      type = Theme.type.options.select{ |t| t[0] == json['タイプ'] }.first[1].to_sym
      comp = Competition.open.type(type)
      raise '現在有効な大会が存在しません' if comp.nil?
      raise '有効な大会が複数存在しています' if comp.size != 1
      score.competition_id = comp.first.id

      score
    end
end
