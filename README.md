# Friending User Guide
[![Build][build-badge]][build-link]
[![License][license-badge]][license-link]
[![Friending][friending-badge]][friending-link]
[![Guide][guide-badge]][guide-link]

---

## Summary

The Friending user manual provided as a web resource generated from the User Manual.  The user guide provides info and tips to help you understand the mobile application as a web resource, instead of the standard PDF representation of the user manual.  The method used to convert the user manual can be viewed in the `build/` directory.

## Friending

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or registering for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The requirements specification project involved constructing a user manual based on a project vision document as well as a set of user requirements.  The User Manual was designed with the goal of deceiving the reader into believing that the application actually existed.  Proto.io was the perfect tool to accomplish this goal in order to ensure that the presentation of Friending in the user manual is visually consistent and believable.  Proto.io provides a fully-interactive high-fidelity prototype that look and work similar to the described application in the user manual.

## GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  It will download the latest build of `friending-manual` and convert it to a HTML representation.  The conversion is handled by the utility `pdf2htmlEX`, which converts the `manual.pdf` to a HTML representation.

## Proto io

Proto.io is a web service to create fully-interactive high-fidelity prototypes that look and work exactly like your app should. No coding required.  Using Proto.io you can quickly design and prototype design ideas.  

[build-badge]: https://gitlab.com/jrbeverly-friending/friending-user-guide/badges/master/build.svg
[build-link]: https://gitlab.com/jrbeverly-friending/friending-user-guide/commits/master

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[friending-badge]: https://img.shields.io/badge/friending-view-blue.svg?maxAge=2592000
[friending-link]: https://jrbeverly-friending.gitlab.io/friending

[guide-badge]: https://img.shields.io/badge/artifacts-view-red.svg?maxAge=2592000
[guide-link]: https://jrbeverly-friending.gitlab.io/friending-user-guide/