# Friending User Guide
[![Build][build-badge]][build-link]
[![License][license-badge]][license-link]
[![Friending][friending-badge]][friending-link]
[![Guide][guide-badge]][guide-link]

---

## Summary

The Friending user manual provided as a web resource generated from the user manual.  The user guide provides info and tips to help you understand the mobile application as a web resource, instead of the standard PDF representation of the user manual.  The method used to convert the user manual can be viewed in the `build/` directory.

## Friending

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or signing up for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The project focused on the development of a user manual around a fictional matchmaking application called Friending.  The application centered around user-created questionnaires that could be used to find relationship matches.  The user manual was designed with the goal of deceiving the reader into believing that the application existed.  A project vision document and set of user requirements guided the development of scenarios and use cases for the application.   The user manual created for the requirements specification project is provided in this repository, available as a standalone HTML page.

## Build

You can build the standalone HTML page using `pdf2htmlEX`.  To build with `pdf2htmlEX`, you can either install `pdf2htmlEX` in your environment, or make use of the docker image.  To start the docker image, run the following:

```console
sh start.sh
```

You can then use `pdf2htmlEX` as such:

```console
pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir public/ index.pdf
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the HTML page.  The scripts handle the process of downloading the user manual from source, allowing it to be converted from PDF to HTML without losing text or format.

```console
sh compile.sh
```

### Build Parameters

| Variable | Default | Description |
| --- | --- |  --- | --- |
| GITLAB_URL | see [`.gitlab-ci.yml`](.gitlab-ci.yml) | The domain of the gitlab instance hosting the friending user manual project. |
| NAMESPACE | see [`.gitlab-ci.yml`](.gitlab-ci.yml) | The namespace of the friending user manual project. |
| PROJECT | see [`.gitlab-ci.yml`](.gitlab-ci.yml) | The project name of the friending user manual project. |

### GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  It will download the latest build of `friending-manual` and convert it to a HTML representation.  The conversion is handled by the utility `pdf2htmlEX`, which converts the `manual.pdf` to a HTML representation.  The output is available in the `public/` directory.

[build-badge]: https://gitlab.com/jrbeverly/friending-user-guide/badges/master/build.svg
[build-link]: https://gitlab.com/jrbeverly/friending-user-guide/commits/master

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[friending-badge]: https://img.shields.io/badge/friending-view-blue.svg?maxAge=2592000
[friending-link]: https://jrbeverly.gitlab.io/friending

[guide-badge]: https://img.shields.io/badge/artifacts-view-red.svg?maxAge=2592000
[guide-link]: https://jrbeverly.gitlab.io/friending-user-guide/