select sg.id, user_id, sg.created as sign_up_date, business_name as merchant_name, mobile_number, email, contact_link, 
cart_expiry, merchant_id, sum(o.total) as GMV, min(o.created) as first_sale, max(o.created) as latest_sale
 from upmesh_sg.businessprofiles sg join upmesh_sg.orders o
 on sg.user_id = o.seller_id
 group by sg.id, user_id, sg.created , business_name , mobile_number, email, contact_link, 
cart_expiry, merchant_id