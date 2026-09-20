# Copilot Instructions

## Shared Instructions

Shared Copilot instructions, skills and prompts are maintained centrally in the
[account-level .github repository](https://github.com/f2calv/.github). They are deliberately not
copied here. Clone that repository and add it to the VS Code workspace, or link its instruction
folders into `~/.copilot/`. If the shared files are unavailable, stop rather than guessing the
conventions.

Everything below is specific to this repository.

## Repository Purpose

This public .NET 10 learning repository demonstrates a small EF Core SQLite model, migration and
console application.

- Build from `efcore-dotnet.slnx` and keep NuGet versions centralized.
- Keep `EFCoreApp` as the runnable SQLite example and `EFCoreLib` as the companion library.
- Treat generated EF Core migrations as source: change the model first and use the EF tooling to
  generate migrations rather than editing generated migration code by hand.
- Keep local database files and Compose service data out of source control.
- The PostgreSQL Compose services are optional local tooling; the current sample itself uses SQLite.
