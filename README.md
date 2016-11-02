```
#  .--------------------------.  #
#    __   _____  __    __  __    #
#   |__| |     ||  |  |  ||  |   #
#    __  | ||  ||  |  |  ||  |   #
#   |  | | ||  ||  |  |  ||  |   #
#   |  | | ''  ||  |_ |  ||  |   #
#   |  |  `-.  ||    ||  ''  |   #
#   '--' .--'  | `---' `-----'   #
#        '-----'                 #
#  .--------------------------.  #
#    WHERE COOL THINGS HAPPEN    #
```

# Node.js Development environment

Created for the development of JavaScript server apps using a micro-service
oriented architecture at Iglu.net

## Features

- A docker container for each micro-service
- A docker network to simulate the services communication 
- Unique container for both environments, development and production
- Latest Node version with Alpine Linux
- Yarn and npm package managers installed globally
- In development mode the app code is editable from the host
but tested/run throw the container 
- JavaScript Standard Style Lint
- Public port 8888
