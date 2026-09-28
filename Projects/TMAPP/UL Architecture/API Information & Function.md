
| Function                 | Location         | Usage                                         | API Route                             | tenant             | Work |
| ------------------------ | ---------------- | --------------------------------------------- | ------------------------------------- | ------------------ | ---- |
| `getFilters()`           | `app.service.ts` | API only                                      | `allFilters/:city/routes_filters`     | ebm                | yes  |
| `getAITodoStats()`       | `app.service.ts` | API only                                      | `todo/ai-stats`                       | UNILEVER           |      |
| `getTodoTotalShops()`    | `app.service.ts` | use in `getTodoSummary`                       | `todo/summary`                        | UNILEVER           | yes  |
| `getRouteDetailById()`   | `app.serive.ts`  | use in `getRouteById `                        | `route/:city/:route_id`               | ebm, rb, rb_africa | yes  |
| `getRouteById()`         | `app.service.ts` | api only                                      | `routeById/:city/:route_id`           | ebm, rb, rb_africa | yes  |
| `getSummaryById()`       | app.service.ts   | api only                                      | `route-summary/:city/:route_id/:type` |                    |      |
| `getShopDetailByRoute()` | shops.service.ts | api and function `getAllShopsForSchedulePlan` | `itinerary/:dist_id`                  | all                | yes  |
| `getShopsByRoute()`      | shops.service.ts | api                                           | `shopsByRoute`                        | all                | yes  |
|                          |                  |                                               |                                       |                    |      |
