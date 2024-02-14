select p.defaultOfferType ,sum(o.quantity)net from orders o join providers p on o.providerId = p.id 
group by p.defaultOfferType 
order by net desc limit 10
