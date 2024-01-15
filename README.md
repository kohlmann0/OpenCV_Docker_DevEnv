# OpenCV_Docker_DevEnv

Personal Notes: 

This is (an attempt to create) a docker-dev container for a VSCode project to use Open CV and Python.
    *I'm probably doing this wrong, but just poking around to see if I can get something to work.

Steps do far.
1. Install VS Code
2. Install extension Dev Containers
3. Install Docker Desktop for Windows (or your appropriate OS).
4. Select Dev Environments from the left hand menu
5. There are two options here. One is a local option, one is to clone a git-hub project.
    - Choosing the "Clone from Git" option as an attempt to recreate an "Onboarding" / "New developer" experience.
    a. I created a blank Git repo (literlally nothing in it but the read-me, and the license)
    b. Entering that repo into the URL, choosing VSCode, and hitting continue opens up VSCode with the project.
    c. Since it was a blank repo, it gave me a relatively blank container, and a relatively blank compose-dev.yaml.

Now what?


Problems I am running into:
1. VSCode/Docker seems to start the dev-container as a blank default image.
    - How to get it to pull something like ubunut and python 3?

2. The image doesn't have the required PIP packages
    - How to get the compose file to bring in the right packages.
