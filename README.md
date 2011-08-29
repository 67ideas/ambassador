# Ambassador

This gem provides an easy way to interface with the [Ambassador API](https://getambassador.com/api-docs).

## Getting Help

Contact [jeff@zferral.com](jeff@zferral.com) with any questions about the API or the Ambassador service.

## Information

The Ambassador API currently supports five methods:

### Event/Record

* campaignID -> Your CampaignID (required)
* customerEmail -> Your customer's email address (required)
* ipAddress -> Customer IP address (required for referred registrations only)
* revenue -> Revenue amount (optional)
* transactionID -> Unique ID (optional)
* productName -> Optional 'product name' for social 'addthis' return.
* shortCode -> Optionally pass in the shortCode from one of our short urls.
* customerID -> Your customer's unique id (optional)
* customerFirstName -> Your customer's first name (optional)
* customerLastName -> Your customer's last name (optional)
* autoEmailAmbassador -> Option to auto email ambassadors that we create with their logins. (optional, default: 1, params: 1 = yes, 0 = no)

### Ambassador/Get

* customerEmail -> Your customer's email address (required)
* customerID -> Your customer's unique id (optional)
* sandbox -> Create as test Ambassador if person does not exist (optional, default: 0, params: 1 = yes, 0 = no)

### Ambassador/All

* pageNum -> Page number (Optional)
* minBalanceMoney -> Minimum money balance (Optional)
* minBalancePoints -> Minimum points balance (Optional)
* minReferrals -> Minimum Referral Count (Optional)
* sandbox -> Create as test Ambassador if person does not exist (optional, default: 0, params: 1 = yes, 0 = no)

### Balance/Deduct

* customerEmail -> Your customer's email address (required)
* balanceType -> Balance type ("money" or "points")
* payoutAmt -> Payout Amount (Optional)
* customerID -> Your customer's unique id (optional)
* sandbox -> Create as test Ambassador if person does not exist (optional, default: 0, params: 1 = yes, 0 = no)

### Social/Addthis

* customerEmail -> Your customer's email address (required)
* productName -> Optional 'product name' for social 'addthis' return.
* customerID -> Your customer's unique id (optional)
* sandbox -> Create as test Ambassador if person does not exist (optional, default: 0, params: 1 = yes, 0 = no)
* autoEmailAmbassador -> Option to auto email ambassadors that we create with their logins. (optional, default: 1, params: 1 = yes, 0 = no)

For more information on each of these, check out the [Ambassador API Documentation](https://getambassador.com/api-docs).

## Installation

Installing the latest official release is as simple as:

    gem install ambassador

Or, if you're using Rails, add it to your Gemfile:

``` ruby
    gem 'ambassador'
```

## Related Resources

You might also be interested in the [Zferral wrapper](https://github.com/grasshopperlabs/zferral) written by [grasshopperlabs](https://github.com/grasshopperlabs).