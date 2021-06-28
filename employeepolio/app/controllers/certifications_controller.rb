class CertificationsController < ApplicationController

  def index
    @certifications = Certification.all
  end

  def new
    @certification = Certification.new
    
    render layout: false 
  end


end
