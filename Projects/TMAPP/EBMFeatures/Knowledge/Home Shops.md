1. Combine totalshops and then sort them with the issues and send top 10 to frontend
2. Sort the todoList shops array by adding as
        "productivity_status": false,
        "stocked_out_status": true,
        "to_be_stocked_out": true,
        "assortment_status": true.

3. Only display top 10 shops that has these.
4. Each shop should has curr_oos_brands => Stockout list + array count
5. Each shop should has tobe_stockedout_brands => To Be Stocked Out + array count
6. Each shop should has missed_skus => Assortment + array count
7. In brands_info.{BrandName}.current_stocked_out_days => atne din ho chuke hain stock out huewe.
8. Passing the filter too right "All", "Stockout", "Assortment" , "Productivity",  "Stock out soon"
9. Passing the status array this which 