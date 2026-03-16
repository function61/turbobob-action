Houses two ~separate things:

- [Turbo Bob](https://github.com/function61/turbobob) GitHub action
- GitHub reusable workflow for doing build with Turbo Bob
  * [example where this is used from](https://github.com/function61/varasto/blob/main/.github/workflows/build.yml)

Why reusable workflow?
----------------------

Looking at [the workflow file](.github/workflows/build.yml) it's rather simple, so why not just copy-paste it around?

The issue is that we need to use a few different actions ([actions/checkout](https://github.com/actions/checkout) at minimum) in the workflow which over time have had
[semi-frequent major version number bumps](https://github.com/function61/turbobob-action/commit/2638b41568d8a94b6f27947718039c8ef51e5951)
which is **busywork that otherwise you'd have to do for each repository**.

One would think for example checking out the repository content would be an operation that in [SemVer](https://semver.org/)-sense don't need major version bumps
(= API-breaking changes), but here we are at sixth major version of the checkout action.
