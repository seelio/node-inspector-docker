# node-inspector-docker

An example of using node-inspector with docker. Using this method allows you to use node-inspector on a node.js process running in a docker container, even if node-inspector isn't installed on that image/container.

This keeps your images and containers nice and clean, while still giving you the power of node-inspector. This also scales much better, as each app can have an inspector added to it or removed at container creation time, and node-inspector doesn't have to be baked into every node.js application at build time.

By running this example, you will have:

- A functioning node.js application, being debugged by an instance of node-inspector
- A functioning coffeescript application that has been compiled to node.js with source maps, also being debugged. The debugger will show coffeescript sources using the source maps, making debugging even easier!

## How to run this example

1. Clone this repo
2. Run `./build.sh` to build:
  - The node-inspector docker image
  - The coffee application
3. Run `docker-compose up`
4. Go to localhost:3000 and localhost:8080 to see the node app and inspector, respectively. You can go to localhost:3001 and localhost:8081 for the coffeescript application

Once you're at the inspector, you can start to set breakpoints, debug, etc.