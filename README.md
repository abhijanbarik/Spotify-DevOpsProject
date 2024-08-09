## Project Overview
This project involves using **Terraform to create multiple Spotify playlists** for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

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
```
provider "spotify" {
  api_key = "?"
}
```
### 3. Need API Key

To interact with Spotify's API, you need a Client ID and Client Secret.

### 4. Start with App Creation

1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Log in with your Spotify account.
3. Click on "Create an App".
<img width="1697" alt="Screenshot 2024-07-27 at 10 39 15 PM" src="https://github.com/user-attachments/assets/974b5d8c-1688-4e0d-9c53-f1bd81278369">
<img width="730" alt="Screenshot 2024-07-27 at 10 40 32 PM" src="https://github.com/user-attachments/assets/233539f9-ba6d-4824-91fc-66edd89163a0">

## 5. Enter Details
Create a file named .env to store your Spotify application's Client ID and Secret:
```
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>

```

## 6. Run the Spotify Auth App and Get the API Key
Make sure Docker Desktop is running, and start the authorization proxy server:

```
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy

```
<img width="1304" alt="Screenshot 2024-07-27 at 10 43 24 PM" src="https://github.com/user-attachments/assets/207b8c0e-fcba-4b96-9aba-3fb0d672b74a">
<img width="714" alt="Screenshot 2024-07-27 at 10 44 30 PM" src="https://github.com/user-attachments/assets/737782db-3945-4006-bd87-e89e44ccbdf8">

### You should get “Authorization Successful” Message.

8. Continue Creating Terraform Code

### 9. Initialize and Apply Terraform Configuration

1. Initialize the Terraform configuration:
    
    ```
    terraform init
    
    ```
    
2. Apply the Terraform configuration:
    
    ```
    terraform plan
    
    ```

   ```
    
    terraform apply -auto-approve

   ```
    

### 11. Verify Playlists on Spotify

After applying the Terraform configuration, log in to your Spotify account and verify that the playlists have been created and populated with the specified tracks.



