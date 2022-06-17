# The Infrastructure is simple

    2 s3 bucket (for the website and the media)
    1 RDS instance (for the database)
    1 ElasticBeanstalk (for the API)

    • the user interacts with the frontend saved on S3 bucket
    • the S3 sends a request to the backend stored in EB env
    • the EB sends a request to the database
    • database sends back the image URL and caption
    • EB sends the URL to the S3 media bucket
    • Then EB sends the image and caption back to the S3 frontend to display them
