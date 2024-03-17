resource "aws_s3_bucket" "sriresumeweb25" {
  bucket = "sriresumeweb25"
}

resource "aws_s3_bucket_public_access_block" "sriresumeweb25" {
  bucket = aws_s3_bucket.sriresumeweb25.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "index" {
  bucket = "sriresumeweb25"
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = "sriresumeweb25"
  key    = "error.html"
  source = "error.html"
  content_type = "text/html"
}


resource "aws_s3_bucket_website_configuration" "sriresumewebsite" {
  bucket = aws_s3_bucket.sriresumeweb25.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.sriresumeweb25.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
	  "Principal": "*",
      "Action": [ "s3:GetObject" ],
      "Resource": [
        "${aws_s3_bucket.sriresumeweb25.arn}",
        "${aws_s3_bucket.sriresumeweb25.arn}/*"
      ]
    }
  ]
}
EOF
}
