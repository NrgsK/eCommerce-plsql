create or replace package purchase_mgmt_pkg is
  procedure create_purchase(p_user_id in number, p_total in number);
  procedure add_purchase_item(p_purchase_id in number,
                              p_product_id  in number,
                              p_quantity    in number);
  procedure finalize_purchase(p_purchase_id in number);
  function calculate_total_amount(p_purchase_id in number) return number;
  procedure view_purchase_history(p_user_id in number);
end purchase_mgmt_pkg;
/

create or replace package body purchase_mgmt_pkg is
procedure create_purchase(p_user_id in number, p_total in number) is
begin
  insert into purchase (user_id, total) values (p_user_id, p_total);
exception
  when others then
    dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
end create_purchase;

procedure add_purchase_item(p_purchase_id in number,
                            p_product_id  in number,
                            p_quantity    in number) is
begin
  insert into purchase
    (purchase_id, product_id, quantity)
  values
    (p_purchase_id, p_product_id, p_quantity);
exception
  when others then
    dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
end add_purchase_item;

procedure finalize_purchase(p_purchase_id in number) is
  cursor c_purchase_items is
    select product_id, quantity
      from purchase
     where purchase_id = p_purchase_id;
begin
  for v_purchase_item in c_purchase_items loop
    update product set quantity = quantity - v_purchase_item.quantity
     where product_id = v_purchase_item.product_id;
  end loop;
exception
  when others then
    dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
end finalize_purchase;

function calculate_total_amount(p_purchase_id in number) return number is
  v_total_amount number := 0;
  cursor c_total_amount is
    select sum(pi.quantity * p.price) as total
      from purchase pi
      join product p
        on pi.product_id = p.product_id
     where pi.product_id = p_purchase_id;
begin
  for v_row in c_total_amount loop
    v_total_amount := v_row.total;
  end loop;
exception
  when others then
    dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
    return null;
end calculate_total_amount;

procedure view_purchase_history(p_user_id in number) is
begin
  for v_purchase in (select p.product_name, pi.quantity, pi.purchase_date
                       from purchase pi
                       join product p
                         on pi.product_id = p.product_id
                      where pi.user_id = p_user_id
                      order by pi.purchase_date desc) loop
    dbms_output.put_line('Product Name: ' || v_purchase.product_name ||
                         ' - Quantity: ' || v_purchase.quantity ||
                         ' - Purchase Date: ' || v_purchase.purchase_date);
  end loop;
exception
  when no_data_found then
    dbms_output.put_line('No purchase history found for user.');
  when others then
    dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
end view_purchase_history;

end purchase_mgmt_pkg;
