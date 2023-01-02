# Kubernetes Resources

### Setup and Run

Execute `sh setup.sh` it will start all the necessary components

For Player view, please visit `localhost:8080` and For Admin view visit `localhost:3000`

To Stop `sh tear-down.sh` 

### 🌈 Contribution

- Add the deployment yml
- Add the service yml
- Update the setup file
- Update the tear down file

### References:

To Get logs from Apps:

`kubectl logs --selector app=legacy-service` 

`kubectl logs --selector app=user-service`