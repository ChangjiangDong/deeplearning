FROM zasdfgbnmsystem/basic

# install packages
USER user
RUN yaourt -Syua --noconfirm nvidia bazel python-tensorflow-opt-cuda tensorboard python-pytorch-cuda
# fix bazel symlink loop error
RUN sudo rm /usr/lib/jvm/java-9-jdk/jre
