## Project Overview

This project involves using Terraform to create multiple Spotify playlists for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.

## Steps to Complete the Project
1. Creating Terraform Code
Start by setting up your Terraform project.
Create a new directory for your Terraform project and navigate to it in your terminal.
Create a file named main.tf.
2. Define Provider
In main.tf, define the Spotify provider:
provider "spotify" {
  api_key = "?"
}

### 3. Need API Key

To interact with Spotify's API, you need a Client ID and Client Secret.

### 4. Start with App Creation

1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Log in with your Spotify account.
3. Click on "Create an App".
<img width="1697" alt="Screenshot 2024-07-27 at 10 39 15 PM" src="https://github.com/user-attachments/assets/974b5d8c-1688-4e0d-9c53-f1bd81278369">
