FROM cimg/openjdk:11.0

LABEL maintainer="Nick Mancuso https://github.com/nrmancuso"

RUN sudo apt update && sudo apt install -y wget

# ENV is transferred to container
ENV IDEA_VERSION="ideaIC-2022.2.1"
ENV IDEA_PATH="/home/circleci/idea"
ENV PATH="${PATH}:${IDEA_PATH}/bin"

# ARG is not transferred to container
ARG IDEA_DOWNLOAD_LINK="https://download.jetbrains.com/idea/${IDEA_VERSION}.tar.gz"

RUN mkdir -p ${IDEA_PATH}
WORKDIR $IDEA_PATH

RUN wget -qO- $IDEA_DOWNLOAD_LINK | \
    tar xvz -C $IDEA_PATH --strip-components=1 && \
    echo $(ls $IDEA_PATH)

