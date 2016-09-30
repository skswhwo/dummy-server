class PushController < ApplicationController

  def create
    token       = params[:token]
    message     = params[:message];
    badge       = params[:badge];
    sound       = params[:sound];
    development = params[:development]
    service     = params[:service]
    data        = params[:data]
  
    if development == "1" 
      set_dev_apn (service)
    else
      set_pro_apn (service)
    end

    Notification.new()

    notification          = Houston::Notification.new(device: token)
    notification.alert    = message
    notification.badge    = badge
    notification.sound    = sound
    notification.category = "view"
    notification.content_available = true
    notification.custom_data = {data: data}
    @apn.push(notification)
    head :ok
  end

  private
  
  def set_dev_apn (service)
    @apn ||= Houston::Client.development
    if service == 'learningcard'
      set_cert_path('lc-dev.pem')
    elsif service == 'classting'
      set_cert_path('classting-dev.pem')
    end
  end
  
  def set_pro_apn (service)
    @apn ||= Houston::Client.production
    if service == 'learningcard'
      set_cert_path('lc-pro.pem')
    elsif service == 'classting'
      set_cert_path('classting-pro.pem')
    end
  end

  def set_cert_path (file)
      @apn.certificate ||= File.read(Rails.root.join('config',file))
  end
end
