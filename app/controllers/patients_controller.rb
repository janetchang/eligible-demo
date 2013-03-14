class PatientsController < ApplicationController
  respond_to :json

  def create
    patient = Patient.create({
      last_name: params[:last_name],
      first_name: params[:first_name],
      dob: params[:dob]
      })
    new_payer
    new_enrollment
  end
  
  private

  def new_payer
    payer = Payer.where(payer_id: params[:payer_id]).first
    unless payer
      payer = Payer.create({
        payer_id: params[:payer_id],
        name: params[:payer_name]
        })
    end
  end
  
  def new_enrollment
    enrollment = Enrollment.create({
      patient: patient,
      payer: payer,
      member_id: params[:member_id]
    })
  end
end