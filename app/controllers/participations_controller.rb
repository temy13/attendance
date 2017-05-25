class ParticipationsController < ApplicationController
  def index
    @members = Member.where(part_cd: (params[:part_cd] || 0))
      .order(:graduate_year)
    @practices = Practice.all
    @participations = Participation.where(member_id: @members.map{|member| member.id}, practice_id: @practices.map{ |pra| pra.id})
  end
end
