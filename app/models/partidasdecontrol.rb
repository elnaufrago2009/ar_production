class Partidasdecontrol < ActiveRecord::Base
  attr_accessible :fase_id, :subfase_id, :subsectore_id, :sectore_id
  belongs_to :sectore
  belongs_to :subsectore
  belongs_to :fase
  belongs_to :subfase
  has_many :equipos
  has_many :trabajadore
  has_many :materiales
  has_many :equiposregistrados
  validates_presence_of :fase_id, :message => 'en blanco'
  validates_presence_of :subfase_id, :message => 'en blanco'
  validates_presence_of :subsectore_id, :message => 'en blanco'
  validates_presence_of :sectore_id, :message => 'en blanco'
end