# ADR-005

## Title

Dataset Architecture

## Status

Accepted

## Context

Data may originate from different technologies.

Examples

- SQL Table
- SQL View
- REST API
- CSV File
- Excel File
- Stream

Users should not depend on physical storage names.

## Decision

Dataset is a logical object.

Dataset stores both:

- DatasetName
- OriginalObjectName

Dataset belongs to one Connection.

## Consequences

Advantages

- Technology independent
- Easier migration
- Better user experience

Disadvantages

- Requires logical naming
