class ApiController < ApplicationController
  include HTTParty
  
  def chart
    @id = params[:id]
    @api = params[:api]
    @url = "https://api.rjmetrics.com/0.1/chart/#{@id}/export"
    @request = HTTParty.get("https://api.rjmetrics.com/0.1/chart/#{@id}/export", :headers => {"X-RJM-API-Key" => @api, "format" => "json"})
    return 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chart }
      format.json  { render :json => @chart.to_json }
    end
  end
end
