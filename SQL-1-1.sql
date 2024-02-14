select userId , sum(sales) net from orders
where userid in (select id from users 
        where registeredDate > date('2022-12-31' , '+1 day' ))  
group by userid
order by net desc limit 10
