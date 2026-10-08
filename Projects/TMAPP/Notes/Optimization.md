check the routeLastUpdated in app.service.ts

Issue for the mongodb and resolve in postgresql

**Why the split matters so much:** the "things that exist" tables stay small and can live permanently in memory, which is what makes queries fast. The "things that happened" tables grow forever, so they get stored differently — in monthly boxes that can be opened individually or thrown away.

This is the fix for what broke MongoDB

In MongoDB, each route record contained its full list of shops _and_ their statistics, all in one document. Every time you read a route, you dragged all of that through memory. Splitting "what a shop is" from "how a shop did today" is what took the memory requirement from **over 64 GB down to 705 MB**.



| # | Endpoint | Service method | File it reads | Postgres status | Measured |
|---|---|---|---|---|---|
| 1 | GET /allRoutes/:city | routesService.getAllRoutes | {tenant}/{city}/routes/all/route.json | ready | 37x faster |
| 2 | GET /allRoutes/:city/routesListings | routesService.getAllRoutes | same as #1 | ready | 37x faster |
| 3 | GET /shops/shopsByRoute | shopService.getShopsByRoute | routes/route_{route}/route.json | ready | tie, more complete data |
| 4 | GET /shops/:city/:route_id/:shop_id | shopService.getShopDetailById | shop_details/{shopId}.json | ready | 1.6x faster |
| 5 | GET /shops/mt-kpi | shopService.getShopMTKPI | shop + route files | needs tracing | not measured |
| 6 | GET /home/details | homeService.getHomeData -> getMtShopDetail | shop files | needs tracing | not measured |
| 7 | GET /visits/progress | visitsService.getTodoProgress | route files | needs tracing | not measured |
| 8 | GET /survey/form/:dist_id/:shop_id | surveyService.getSurveyForm | shop file | needs tracing | not measured |
| 9 | GET /survey/offline/form/all | surveyService.getSurveyOfflineForm | shop files | needs tracing | not measured |
| 10 | GET /areas | appService.getUserAreas -> getFilters | user_hierarchy.json | BLOCKED - no user table | n/a |
| 11 | GET /assigned-cities | appService.getUserCities -> getFilters | user_hierarchy.json | BLOCKED - no user table | n/a |
| 12 | GET /summery-filter-values/:type | appService.getSummeryFilterValues | user_hierarchy.json + routes | BLOCKED - no user table | n/a |
| 13 | GET /cron-api | appService.cacheTodoVisitReport, cacheTodoSections | route + shop files | ready, low priority | batch job |
