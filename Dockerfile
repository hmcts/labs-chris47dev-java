# renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.7.4
ARG PLATFORM=""
# Application image

FROM hmctssbox.azurecr.io/base/java${PLATFORM}:25-distroless

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/labs-labs-chris47dev-java.jar /opt/app/

EXPOSE 8080
CMD [ "labs-labs-chris47dev-java.jar" ]
