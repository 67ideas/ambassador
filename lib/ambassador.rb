module Ambassador
  include HTTParty

  def initialize(username, api_key, response_type)
    self.class.default_params :username => username, :api_key => api_key, :response_type => response_type
    self.class.base_uri "https://getambassador.com/api/v1/#{username}/#{api_key}/#{response_type}"
  end

  #Records an instance of a campaign event
  # :campaignID             [required]
  # :customerEmail          [required]
  # :ipAddress              [required for referred registrations]
  # :revenue
  # :transactionID
  # :productName
  # :shortCode
  # :customerID
  # :customerFirstName
  # :customerLastName
  # :autoEmailAmbassador
  def record_event(params = {})
    self.class.get('/event/record', params)
  end

  # Retrieve info for a single ambassador.
  # :customerEmail       [required]
  # :customerID
  # :sandbox
  def ambassador(params = {})
    self.class.get('/ambassador/get', params)
  end

  # Retrieves a list of up to 50 ambassadors, optionally filtered by the parameters below.
  # :pageNum
  # :minBalanceMoney
  # :minBalancePoints
  # :minReferrals
  # :sandbox
  def ambassadors(params = {})
    self.class.get('/ambassador/all', params)
  end

  #Deducts from the running commission balance for one of your customers.
  # :customerEmail    [required]
  # :balanceType      [required, "money" or "points"]
  # :payoutAmt
  # :customerID
  # :sandbox
  def deduct_balance(params = {})
    self.class.get('/balance/deduct', params)
  end

  # Retrieves an AddThis snippet for all active campaigns for one of your customers
  # :customerEmail    [required]
  # :productName
  # :customerID
  # :sandbox
  # :autoEmailAmbassador
  def addthis(params = {})
    self.class.get('/social/addthis', params)
  end
end
