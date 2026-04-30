resource "aws_s3_bucket" "mybucket" {
  bucket = "awsbucketcreatedviaterrafrom"
}

resource "aws_s3_object" "sample_csv" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "sample.csv"
  source = "sample.csv"
}

resource "aws_s3_object" "products_csv" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "products.csv"
  source = "products.csv"
}