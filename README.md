# node-inspector-docker

An example of using [node-inspector](https://github.com/node-inspector/node-inspector) with docker. Using this method allows you to use node-inspector on a node.js process running in a docker container, even if node-inspector isn't installed on that image/container.

By running this example, you will have:

- A functioning node.js application, being debugged by an instance of node-inspector
- A functioning coffeescript application that has been compiled to node.js with source maps, also being debugged. The debugger will show coffeescript sources using the source maps, making debugging your CS even easier!

The meat of the approach is described in the [annotated docker-compose.yml](https://github.com/seelio/node-inspector-docker/blob/master/docker-compose.yml) file.

Advantages to this approach:
- It keeps your images and containers nice and clean, while still giving you the power of node-inspector when you need it.
- It scales better than baking node-inspector into your images, as each app can have an inspector added to it or removed at container creation time. This means you don't have to maintain two separate node.js images, one with node-inspector for dev, and one without for prod.
- It makes it easier to have identical dev and production docker images. Having a dev docker image that's the exact same as what you deploy to production is devops zen.
- Pure docker implementation, no ssh tunnels and no messing with iptables, because no one wants that.
- Doesn't use net=host mode, meaning that your apps are free to use whatever ports they want without running into each other. You manage which ports map to which apps in the docker-compose file, the way it should be.

## Yeah that's great whatever, how do I run it?

1. Clone this repo
2. Run `./build.sh` to build:
  - The node-inspector docker image
  - The coffeescript application
3. Run `docker-compose up`
4. Go to localhost:3000 and localhost:8080 to see the node app and inspector, respectively. You can go to localhost:3001 and localhost:8081 for the coffeescript application

Once you're at the inspector, you can start to set breakpoints, debug, etc.
