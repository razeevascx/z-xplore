# Stage 1: Builder - Install all tools
FROM dhi.io/debian-base:trixie AS builder

ENV DEBIAN_FRONTEND=noninteractive

# Add Node.js repository and install everything in one go
RUN apt-get update \
    && apt-get install -y curl ca-certificates gnupg \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y \
        nodejs \
        default-jdk \
        git \
    && npm install -g @zowe/cli@latest \
    && rm -rf /var/lib/apt/lists/*

# Stage 2: Final runtime image
FROM dhi.io/debian-base:trixie

ENV DEBIAN_FRONTEND=noninteractive

# Install only runtime dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    git \
    && rm -rf /var/lib/apt/lists/*

# Ensure ldconfig exists and the cache is initialized for VS Code server checks.
RUN apt-get update && apt-get install -y libc-bin \
    && ldconfig \
    && rm -rf /var/lib/apt/lists/*

# Copy Node.js from builder
COPY --from=builder /usr/bin/node /usr/bin/node
COPY --from=builder /usr/bin/npm /usr/bin/npm
COPY --from=builder /usr/bin/npx /usr/bin/npx
COPY --from=builder /usr/lib/node_modules /usr/lib/node_modules

# Copy Java from builder
COPY --from=builder /usr/lib/jvm/java-*-openjdk-* /usr/lib/jvm/java-runtime

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-runtime
ENV PATH="${JAVA_HOME}/bin:${PATH}"

WORKDIR /workspace

CMD ["sleep", "infinity"]
