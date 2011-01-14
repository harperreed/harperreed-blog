import datetime
from boto.cloudfront import CloudFrontConnection

AWS_CF_DISTRIBUTION_ID = 'E3ZTU1ROX12QW'

files = ['/css/style.css', ]

conn = CloudFrontConnection()
print conn.create_invalidation_request(AWS_CF_DISTRIBUTION_ID, files)
