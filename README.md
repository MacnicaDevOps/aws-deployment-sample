# aws-deployment-sample

## Overview

This is a simple example CCI yaml to allow specific port from a specific ip address instantly at certain process.

In this yml, the workfrol proceed as below:
1. get global ip address -- get CCI container global address asigned to this build (this changes everytime)
1. use aws cli to add a rule that allows port 80 from the detected global ip to the security group called "cci-test"
1. curl to the specific address that is protected by this security group
1. remove the rule added at 2. from the security group

## Docker-image

This workflow uses original container image with preinstalled aws cli. </br>
Dockerfile can be found in below url:</br>
https://hub.docker.com/r/minepicco/cci-aws-docker/dockerfile
