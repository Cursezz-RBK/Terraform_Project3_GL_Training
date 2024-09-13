
# Create S3 bucket for static website hosting
resource "aws_s3_bucket" "static_website_bucket" {
  bucket = "jenkins-ninjas-static-website-bucket"  # Ensure this bucket name is globally unique

  website {
    index_document = "index.html"
    #error_document = "error.html"  # Optional, specify if you have a custom error page
  }

  tags = {
    Name        = "Jenkins_Ninjas_S3_SWH"
    Environment = "Development"
  }
}

# Create S3 bucket for RDS backups
resource "aws_s3_bucket" "rds_backup_bucket" {
  bucket = "jenkins-ninjas-rds-backup-bucket"  # Ensure this bucket name is globally unique

  tags = {
    Name        = "Jenkins_Ninjas_S3_RDS_Backup"
    Environment = "Development"
  }
}

# Set object ownership controls for the static website bucket
resource "aws_s3_bucket_ownership_controls" "static_website_bucket_ownership" {
  bucket = aws_s3_bucket.static_website_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# Set object ownership controls for the RDS backup bucket
resource "aws_s3_bucket_ownership_controls" "rds_backup_bucket_ownership" {
  bucket = aws_s3_bucket.rds_backup_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
