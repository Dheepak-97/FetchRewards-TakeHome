## When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?

-- Ans: The average spend of Rejected receipts are greater ($23.33) than Accepted receipts (20.26)
 
select rewardsReceiptStatus, round(avg(totalSpent),2) Avg_spent
from receipts r
where rewardsReceiptStatus in ('FINISHED','REJECTED')
group by rewardsReceiptStatus;

## When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?

-- Ans: The total number of items purchased in Accepted receipts are greater (1264 items) than Rejected receipts (173 items)

select rewardsReceiptStatus, sum(purchasedItemCount) Total_item_purchased
from receipts r
where rewardsReceiptStatus in ('FINISHED','REJECTED')
group by rewardsReceiptStatus;

