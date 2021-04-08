FROM automation-ui
ARG PROJETO
ARG ENV
ARG TAG
ENV ENVIRONMENT="${ENV}"
ENV TAGS="${TAG}"
ENV PROFILES="-p parallel"
RUN rm -rf /automation-ui/*
COPY ./$PROJETO /$PROJETO
RUN cp -Rav /$PROJETO/* /automation-ui
RUN rm -rf /automation-ui/Gemfile.lock
RUN bundle install --jobs 8
RUN env |egrep '(TAG|ENV|PROF)'
CMD ls -lah /automation-ui/reports
