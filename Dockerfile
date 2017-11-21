FROM zasdfgbnmsystem/basic

# install packages
USER user
RUN yaourt -Syua --noconfirm python-tensorflow-cuda python-pytorch-cuda
USER root

# cleanups
RUN yes | pacman -Scc
