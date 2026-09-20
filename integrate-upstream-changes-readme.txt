#To merge a specific branch from vernemq/docker-vernemq into our master, do

1. Fetch all changes from upstream(vernemq/docker-vernemq)

git fetch --tags upstream

2. Make sure we are on our fork's proper release branch, for example my-release-2.2.0:

git checkout -b my-release-2.2.0

3. Merge the tag from upstream (for example, merge rel-2.2.0)

git merge upstream/rel-2.2.0

4. Fix conflicts if any

5. Update Dockerfile.alpine with any changes on the part to build the vernemq itself (look at the relevant tag, for example 2.2.0 of vernemq/vernemq)

6. Update Makefile to reference the new vernemq/vernemq version (that's going to be build by running the make release)

7. Commit and push

8. Update master's head to point to the head of the release branch - for example, my-release-2.2.0

9. Trigger the build via github site (starting/unstaring the project)
