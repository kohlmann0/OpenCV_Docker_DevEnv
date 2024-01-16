# OpenCV_Docker_DevEnv

Personal Notes: 

This is (an attempt to create) a docker-dev container for a VSCode project to use Open CV and Python.
    *I'm probably doing this wrong, but just poking around to see if I can get something to work.

Attempt #2 (in progress)
Instead of using the built in Docker Desktop dev environment, I'll try a slightly older method.
Create the container, then have VSCode connect to the running container.
(basically bypass the Docker version, and do the manual VSCode version)

Same as Attempt #1, thinks you need installed.
1. VSCode with Docker and DevContainers extensions
2. GIT
3. Docker desktop might be nice, but I think is unecessary in this scenario. (I think we can commandline "docker compose up" in this case, and it should work.)


Attempt # 1 (Fail)
1. Install VS Code
2. Install extension Dev Containers
3. Install Docker Desktop for Windows (or your appropriate OS).
4. Select Dev Environments from the left hand menu
5. There are two options here. One is a local option, one is to clone a git-hub project.
    - Choosing the "Clone from Git" option as an attempt to recreate an "Onboarding" / "New developer" experience.
    a. I created a blank Git repo (literlally nothing in it but the read-me, and the license)
    b. Entering that repo into the URL, choosing VSCode, and hitting continue opens up VSCode with the project.
    c. Since it was a blank repo, it gave me a relatively blank container, and a relatively blank compose-dev.yaml.

Problems I am running into:
1. VSCode/Docker seems to start the dev-container as a blank default image.
    - How to get it to pull something like ubunut and python 3?

2. The image doesn't have the required PIP packages
    - How to get the compose file to bring in the right packages.

*Fail*
After futher research, you can't rebuild the dev container once it's created (at least not using Docker Desktop's version of it)
You could check in your changes to the .yaml file into github, destroy the container, and then create a brand new one, but why on earth would you want to make it so difficult? 

I just want to add the python image, and install the requirements.txt, but once the container is created, your stuck, without a bunch of workaround... An example, let's say you are mid-project, and you realize you need a new python package... The only way to do that is... what?? Check in all your partially finished code, then recreate the dev-environment? Poor design. I guess that's why it's only Beta.



