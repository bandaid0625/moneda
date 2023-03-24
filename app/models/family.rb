class Family < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '単身世帯' },
    { id: 3, name: '夫婦世帯' },
    { id: 4, name: '家族世帯（子供あり）' },
    { id: 5, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users
end
