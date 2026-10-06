check the routeLastUpdated in app.service.ts

Issue for the mongodb and resolve in postgresql

**Why the split matters so much:** the "things that exist" tables stay small and can live permanently in memory, which is what makes queries fast. The "things that happened" tables grow forever, so they get stored differently — in monthly boxes that can be opened individually or thrown away.

This is the fix for what broke MongoDB

In MongoDB, each route record contained its full list of shops _and_ their statistics, all in one document. Every time you read a route, you dragged all of that through memory. Splitting "what a shop is" from "how a shop did today" is what took the memory requirement from **over 64 GB down to 705 MB**.