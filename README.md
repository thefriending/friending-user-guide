<div align="center">
  <img alt="friending user guide" src="./icon.png" />
  <br/>
  <h1>Friending User Guide</h1>
</div>

<p align="center">
  Friending is an online dating, friendship, and social networking mobile application.
</p>

<div align="center">
  <a href="/../commits/master"><img alt="Build Status" src="/../badges/master/build.svg"/></a>
  <a href="./LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000"/></a>
  <a href="https://jrbeverly-friending.gitlab.io/friending"><img alt="Friending" src="https://img.shields.io/badge/friending-view-blue.svg?maxAge=2592000"/></a>
  <a href="https://jrbeverly-friending.gitlab.io/friending-user-guide/"><img alt="User Guide" src="https://img.shields.io/badge/artifacts-view-red.svg?maxAge=2592000"/></a>
</div>
<br/>

## Abstract
**Friending** is an online dating, friendship, and social networking mobile application that features user-created questionnaires and multiple choice questions. Friending has two primary features: joining groups to find people similar to you or registering for events happening in
your local area.  Friending is a mobile app prototype built with Proto.io mobile app prototyping tool.

The **Friending** prototype was built as part of the design of a requirements specification project.  **Friending** was built for a user manual (UM), in order to ensure that the screenshots in the user manual were visually consistent and believable.
The User Manual was designed with the goal of _deceiving_ the reader into believing that the application actually existed.  Proto.io was the perfect tool to accomplish this goal.

## GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
build:
    image: jrbeverly/pdf2htmlex
    stage: build
    script:
        - "apk --no-cache add curl zip"
        - "curl -o artifacts.zip --header \"PRIVATE-TOKEN: ${ARTIFACT_TOKEN}\" \"${GITLAB_URL}/api/v3/projects/${PROJECT_ID}/builds/artifacts/master/download?job=compile_pdf\" "
        - "unzip artifacts.zip"
        - "mv src/manual.pdf src/index.pdf"
        - "pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir public src/index.pdf"
    only:
        - triggers
    artifacts:
        paths:
            - public
```

It will download the latest build of `friending-manual` and convert it to a HTML representation.

## Proto io
Proto.io is a web service to create fully-interactive high-fidelity prototypes that look and work exactly like your app should. No coding required.  Using Proto.io you can quickly design and prototype design ideas.  