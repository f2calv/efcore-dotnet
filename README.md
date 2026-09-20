# EF Core .NET

This .NET 10 learning repository demonstrates an EF Core SQLite model, generated migration and
console application based on Microsoft's introductory EF Core tutorial.

## Projects

- `src/EFCoreApp` contains the `BloggingContext`, SQLite model, initial migration and CRUD example.
- `src/EFCoreLib` is a companion class library retained by the solution.

The application stores `blogging.db` in the current user's local application-data directory. The
optional Compose file starts PostgreSQL and pgAdmin for separate local experimentation; the current
application does not connect to those services.

## Development

Open `efcore-dotnet.slnx` with the .NET 10 SDK. The Dev Container provides .NET, pre-commit and
Docker access for the optional Compose services without upgrading packages or installing Git hooks
at startup.

Run repository linting explicitly:

```text
pre-commit run --all-files
```

Restore and build commands require NuGet access and are intentionally left to the developer. See
Microsoft's [EF Core getting-started guide](https://learn.microsoft.com/ef/core/get-started/overview/first-app)
for the tutorial on which the sample is based.

## Continuous Integration

Pull requests run reusable lint, version calculation and full-solution build jobs. Releases are
created from successful default-branch runs only.

## Data and Security

Compose defaults are for local development only. Supply non-default credentials through environment
variables for any shared environment, and never commit local database or service-data directories.
