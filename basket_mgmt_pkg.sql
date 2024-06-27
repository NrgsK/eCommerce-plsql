create or replace package basket_mgmt_pkg is
    procedure add_to_basket(p_user_id in number, p_product_id in number, p_quantity in number);
    procedure delete_from_basket(p_user_id in number, p_product_id in number);
    procedure update_basket_item(p_user_id in number, p_product_id in number, p_quantity in number);
    function calculate_basket_total(p_user_id in number) return number;
    procedure purchase_basket(p_user_id in number);
    function check_basket_quantity(p_user_id in number) return boolean;
end basket_mgmt_pkg;
/
create or replace package body basket_mgmt_pkg is

    procedure add_to_basket(p_user_id in number, p_product_id in number, p_quantity in number) is
    begin
        insert into basket (user_id, product_id, quantity)
        values (p_user_id, p_product_id, p_quantity);
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
    end add_to_basket;

    procedure delete_from_basket(p_user_id in number, p_product_id in number) is
    begin
        delete from basket
        where user_id = p_user_id
        and product_id = p_product_id;
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
    end delete_from_basket;

    procedure update_basket_item(p_user_id in number, p_product_id in number, p_quantity in number) is
    begin
        update basket
        set quantity = p_quantity
        where user_id = p_user_id
        and product_id = p_product_id;
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
    end update_basket_item;

    function calculate_basket_total(p_user_id in number) return number is
        cursor c_basket_total is
            select sum(b.quantity * p.price) as total
            from basket b
            join product p ON b.product_id = p.product_id
            where b.user_id = p_user_id;
        v_total number := 0;
    begin
        for v_basket_total in c_basket_total loop
            v_total := v_basket_total.total;
        end loop;
        
        return v_total;
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
            return null;
    end calculate_basket_total;

    procedure purchase_basket(p_user_id in number) is
        cursor c_basket is
            select product_id, quantity
            from basket
            where user_id = p_user_id;
        v_total number;
    begin
        v_total := calculate_basket_total(p_user_id);
        
        for v_basket_record in c_basket loop
            insert into purchase (user_id, product_id, quantity, total)
            values (p_user_id, v_basket_record.product_id, v_basket_record.quantity, v_total);
        end loop;
        
        delete from basket
        where user_id = p_user_id;
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
    end purchase_basket;

    function check_basket_quantity(p_user_id in number) return boolean is
        cursor c_basket is
            select b.product_id, b.quantity, p.quantity as product_quantity
            from basket b
            join product p ON b.product_id = p.product_id
            where b.user_id = p_user_id;
    begin
        for v_basket_record in c_basket loop
            if v_basket_record.quantity > v_basket_record.product_quantity then
                dbms_output.put_line('Requested product quantity limit has been exceeded: ProductID: ' || v_basket_record.product_id);
                return false;
            end if;
        end loop;
        return true;
    exception
        when others then
            dbms_output.put_line('An unexpected error occurred: ' || sqlerrm);
            return false;
    end check_basket_quantity;

end basket_mgmt_pkg;
/
