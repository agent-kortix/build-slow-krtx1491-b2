# syntax=docker/dockerfile:1.7
FROM ubuntu:24.04

WORKDIR /workspace

# The build's 'pending' phase must outlast the stale-provisioning clock (10 min)
# while staying under the session's 12-min peer-build wait. KRTX-1491
# verification build, post-fix leg.
RUN sleep 340 && echo "slow build leg B finished"
