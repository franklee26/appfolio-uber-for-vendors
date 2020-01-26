class LandownersController < ApplicationController
  protect_from_forgery :except => [:add_tenant, :update_landowner]

  def index
    render json: Landowner.all, status: :ok
  end

  def get
    render json: Landowner.find_by(id: params[:landowner_id]), status: :ok
  end

  # GET /landowners/1
  # Returns a json containing all the fields for the landowner
  def show
    @landowner = Landowner.find(params[:id])
    render json: @landowner
  end

  # PATCH /tenants/update_tenants  
  # expects json in the form:
=begin
  {
    "name": "name",
    "email": "email",
    "landowner_id": 1,
  }
=end
def update_landowner
  body = JSON(request.body.read)
  name = body["name"]
  email = body["email"]
  landowner_id = body["landowner_id"]
  response = {}
  @landowner = Landowner.find_by(id: landowner_id)
  if Landowner.find_by(id: landowner_id) && name.class == String && email.class == String
    @landowner.update_attribute(:name, name)
    @landowner.update_attribute(:email, email)
    response = {
      code: 200,
      name: name,
      email: email,
      landowner_id: landowner_id,
    }
  else
    response = {
      code: 400,
      landowner_id: landowner_id
    }
  end
  render json: response, status: :ok
end

  # Adds a tenant association to this landowner
  def add_tenant
    body = JSON(request.body.read)
    tenant_id = body["tenant_id"]
    landowner_id = body["landowner_id"]
    response = {}
    if Tenant.find_by(id: tenant_id) && Landowner.find_by(id: landowner_id)
      Landowner.find(landowner_id).tenants << Tenant.find(tenant_id)
      response = {
        code: 200,
        tenant_id: tenant_id,
        landowner_id: landowner_id
      }
    else
      response = {
        code: 400,
        tenant_id: -1,
        landowner_id: -1
      }
    end
    render json: response, status: :ok
  end

  # Returns a list of all the tenants associated with this landowner
  def tenants
    landowner_id = params[:landowner_id]
    render json: Landowner.find_by(id: landowner_id).tenants, status: :ok
  end

  def auth
    client = Signet::OAuth2::Client.new(clientOptions)
    session[:user_type] = "landowner"
    redirect_to client.authorization_uri.to_s
  end


  # Goes to landowner's profile.html.erb page
  def profile
  end

end
