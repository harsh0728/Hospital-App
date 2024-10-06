class DashboardsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      if current_user.role == 'receptionist'
        redirect_to receptionist_dashboard_path
      elsif current_user.role == 'doctor'
        redirect_to doctor_dashboard_path
      else
        redirect_to root_path, alert: "Unauthorized access."
      end
    end
  
    def receptionist
      # Logic for the receptionist's dashboard
      @patients = Patient.all
    end
  
    def doctor
      # Logic for the doctor's dashboard
      @patients = Patient.where(doctor_id: current_user.id)
    
    # Group patients by date and count them
    @patient_count_by_day = Patient.group_by_day(:created_at).count
      # Any logic related to patient registration graphs
    end
  end
  