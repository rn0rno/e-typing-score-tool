# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  title      :string
#  start_at   :datetime
#  end_at     :datetime
#  theme_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_competitions_on_theme_id  (theme_id)
#

Competition.seed(:title, :theme_id,
  {title: '第871回 腕試しタイピング　2017/12/26～2018/1/1', start_at: '2017/12/26 00:00:00', end_at: '2018/1/1 23:59:59', theme: Theme.find_by(name: '冬の言葉', type: 0)},
  {title: '第299回 腕試しタイピング　2017/12/26～2018/1/1', start_at: '2017/12/26 00:00:00', end_at: '2018/1/1 23:59:59', theme: Theme.find_by(name: '映画', type: 2)},
  {title: '第299回 腕試しタイピング　2017/12/26～2018/1/1', start_at: '2017/12/26 00:00:00', end_at: '2018/1/1 23:59:59', theme: Theme.find_by(name: '冬の言葉', type: 1)},
  {title: '第877回 腕試しタイピング　2018/2/6～2018/2/13', start_at: '2018/2/6 00:00:00', end_at: '2018/2/13 23:59:59', theme: Theme.find_by(name: 'バレンタイン', type: 0)},
  {title: '第305回 腕試しタイピング　2018/2/6～2018/2/13', start_at: '2018/2/6 00:00:00', end_at: '2018/2/13 23:59:59', theme: Theme.find_by(name: '映画', type: 2)},
  {title: '第305回 腕試しタイピング　2018/2/6～2018/2/13', start_at: '2018/2/6 00:00:00', end_at: '2018/2/13 23:59:59', theme: Theme.find_by(name: 'バレンタイン', type: 1)},
)
