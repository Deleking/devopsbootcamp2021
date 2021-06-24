terraform {
    backend "s3" {
      bucket = "adelerie1-tutorial-1"
      key    = "training/june2021/day3-statefile"
      region = "eu-west-1" 
  }  
} 