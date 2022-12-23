FROM alpine

LABEL "name"="bash"
LABEL "repository"="https://github.com/walkthunder/remote-workflow-trigger"
LABEL "version"="1.0.0"

LABEL com.github.actions.name="Remote Workflow Trigger"
LABEL com.github.actions.description="An action that will call a webhook from your Github workflow"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="gray-dark"

RUN apk add --no-cache bash curl openssl util-linux xxd jq

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
