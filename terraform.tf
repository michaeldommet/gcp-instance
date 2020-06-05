provider "google" {
 credentials = file("compute@developer-key.json") // path to your credentials file
 project     = "project-a" // your project name
 region      = "us-central1" 
 version     = "3.16"
}