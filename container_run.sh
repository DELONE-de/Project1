
           echo "nagivating to app directory..."
             cd /home/azureuser/Project1
              echo "pulling latest docker images..."
               docker compose pull
             echo "starting docker compose..."
                docker compose down
                docker compose build
               docker compose up -d
            echo "listting running containers..."
             docker ps -a
