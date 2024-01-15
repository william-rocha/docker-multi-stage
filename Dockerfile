FROM ubuntu:groovy AS build
RUN echo "build...">log.txt

###############################

# serial bu
# sudo ./script.sh || sudo ./script.sh --target dev

FROM build AS valid
RUN echo "Build a validation...">>log.txt

FROM valid AS dev
RUN echo "Build a dev...">>log.txt

FROM dev AS prod
RUN echo "Build a prod and finish.">>log.txt

################################

# in same time
# If it does not have the — target flag, the last one in the Dockerfile order will be chosen.
# sudo ./script.sh || sudo ./script.sh --target dev

# FROM build AS valid-1
# RUN echo "Build a valid 1...">>log.txt

# FROM build AS dev
# RUN echo "Build a dev...">>log.txt

# FROM build AS prod
# RUN echo "Build a prod.">>log.txt

##################################

# after
# sudo ./script.sh --build-arg 1

# FROM build AS valid-2
# RUN echo "Build a valid 2...">>log.txt

# FROM valid-${src} AS after

# FROM after
# RUN echo "Build the final validation.">>log.txt