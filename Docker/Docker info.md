# We Isolate Services
* To host our apps we need Infrastructure.
* We use Vms.Cloud Computing to setup Infra
* We Isolate our service in OS of VM
* Because of Isolation we end up setting up multiple VM's/Instances.
* VM's/Instance will be overprovisioned.
* Results in High CapEx and OpEx
___
# VM's are expensive
* Every VM has OS
* OS needs nurturing
* OS need Licensing
* OS takes time to boot
* VM's are Portable but Bulky
* VM needs Resources for its OS
* All this to Isolate services
___
# Point to be Noted
* Isolating services are IMP (Need OS)
* High availability achived by multiple instances/vm's
* Portably Matters or Eases the Deployment
* All this raise CapEx and OpEx
___
# Container
* A process[Isolated]
* A directory [Namespace, cgroup]
* Necessary bin/lib in the Directory
* A directory with IP address to connect.
___
* Containers share the machine's OS system kernel and therefore do not require an OS per app
* A container is a standard unit of software that packages up
		* Code
		* Dependencies
___
# VM vs Container
* Containers offer Isolation not Virtualization
* Containers are OS virtualization
* VM's are Hardware virtualization
* Vm need OS
* Containers don't need OS
* Containers uses Host OS for Compute Resource
___
# Docker History
* Formerly Known as DotCloud Inc
* Into PAAS Business
* Used LXC (Linux Containers)
* Saved CapEx by using Containers instead of VM's
* Developed TOOLS to manage containers.
* Business Failed.
* Made their tools OpenSource project knows as Docker.
* Got Funding
* Changed name to Docker Inc
___
# Docker Containers
Docker containers that run on Dockers Engine:
* Standard: Docker created the industry standard for containers, so they could be portable anywhere
* Lightweight: Containers share the machine's OS system kernel and therefore do not require an OS per application, driving higher server efficiencies and reducing server and licensing costs
* Secure: Applications are safer in containers and Docker provides the strongest default isolation capabilities in the industry
___
# Docker Images
* A stopped Container like vm Image.
* Consist of multiple layers.
* An app will be bundled in a image.
* Containers runs from Images
* Images are called as Repositories in Registries.
___
# Docker Registries
* Storage for Docker images
* Dockerhub is default registry
* Cloud based Registries.
		* Dockerhub
		* GCR (Google)
		* Amazon ECR
* Inhouse or Local Registries
		* Nexus 3+
		* Jfrog Artifactory
		* DTR (Docker trusted Registry)
___
# Container Volumes
* Persistent storage for volatile containers
# Container Data
* The data does'nt persist when that container no longer exists, and it can be difficult to get the data out of the container if another process needs it.
* A container's writable layer is tightly coupled to the host machine where the container is running. You can't easily move the data somewhere else.
###### Docker has two options for containers to store files in the host machine
* Volumes
		* Managed by Docker (/var/lib/docker/volumes/ on Linux)
* Bind mounts
		* Stored anywhere on the host system
___
# Dockerfile Instructions
* FROM => Base Image
* LABELS => Adds metadata to an image
* RUN => execute commands in a new layer and commit the results
* ADD/COPY => Adds files and folders into image.
* CMD => Runs binaries/commands on docker run
* ENTRYPOINT => Allows you to configure a container that will run as an executable.
* VOLUME => Creates a mount point and marks it as holding externally mounted volumes.
* EXPOSE => Container listens on the specified network ports at runtime
* ENV => Sets the environment variable
* USER => Sets the user name (or UID)
* ARG => Defines a variable that users can pass at build-time
* ONBUILD => Adds to the image a *trigger* instruction to be executed at a later time