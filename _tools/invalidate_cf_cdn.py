import datetime
from boto.cloudfront import CloudFrontConnection

AWS_CF_DISTRIBUTION_ID = 'E3ZTU1ROX12QW'

files = ['/css/style.css',
    '/favicon.ico',
    '/images/harper_6.jpg',
    '/images/glider.png',
    '/js/scripts.js',
    '/css/style.css',
    '/images/DateHeaderIco.png',
    '/images/PostComLeft.png',
    '/images/PostComRight.png',
    '/images/PostDetailsTagsIco.png',
    '/images/RelatedPostsHeading.png',
    '/images/RelatedPostsLi.png',
    '/images/CommentsListHeading.png',
    '/images/CommentsFormHeading.png',
    '/images/SubmitComment.png',
    '/images/SubmitComment.png',
    '/images/SubmitComment.png',
    '/images/CategIco.png',
    '/images/tr.png',
    '/images/tl.png',
    '/images/br.png',
    '/images/bl.png',
    '/images/SRLBkg',
    '/images/SRRBkg',
    '/images/close2.png',]


conn = CloudFrontConnection()
print conn.create_invalidation_request(AWS_CF_DISTRIBUTION_ID, files)
