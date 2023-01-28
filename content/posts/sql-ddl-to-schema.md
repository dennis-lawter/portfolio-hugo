+++
title = "Sql Ddl to Schema"
date = 2023-01-24T22:10:25-05:00
author = "Dennis Lawter"
tags = ["rust", "github"]
keywords = ["rust", "github", "sql", "yaml", "json", "mysql", "psql", "mssql", "tsql"]
description = "SQL DDL to Schema"
showFullContent = false
readingTime = true
draft = false
weight = 101
+++

A schema generator written in Rust that converts various dialects of SQL table create statements.

## GitHub Repo

[Checkout My GitHub Repo](https://github.com/dennis-lawter/sql-ddl-to-schema)

## Overview

I've worked on several systems in the past where existing SQL tables were used to generate JSON and YAML schemas.
Using tools like MySQL Workbench or DBeaver, it's trivial to generate a **CREATE** statement for an existing table.
This tool hopes to ease the process of converting from these statements to a schema that can be used
for both OpenAPI documents and user input validation.
