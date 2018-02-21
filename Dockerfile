FROM zasdfgbnmsystem/basic

# install packages
USER user
RUN yaourt -Syua --noconfirm nvidia python-tensorflow-opt-cuda tensorboard python-pytorch-cuda
USER root

# cleanups
RUN yes | pacman -Scc
USER user
