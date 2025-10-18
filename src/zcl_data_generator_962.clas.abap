CLASS zcl_data_generator_962 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_generator_962 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lt_oem TYPE STANDARD TABLE OF ZOEM_TBL.

    lt_oem = VALUE #(
        ( oem_id = 'FD' name = 'Ford Motor Company' oem_web_url = 'https://www.ford.com' oem_pic_url = 'https://github.com/Tomomi-H011/ZDEMO962/blob/main/image/FordLogo.png' currency_code = 'USD' )
        ( oem_id = 'TY' name = 'Toyota Motor Corporation' oem_web_url = 'https://www.toyota.com' oem_pic_url = 'https://github.com/Tomomi-H011/ZDEMO962/blob/main/image/ToyotaLogo.png' currency_code = 'USD' )
        ( oem_id = 'HY' name = 'Hyundai Motor Company' oem_web_url = 'https://www.hyundaiusa.com' oem_pic_url = 'https://github.com/Tomomi-H011/ZDEMO962/blob/main/image/HyundaiLogo.png' currency_code = 'USD' )
        ( oem_id = 'GM' name = 'General Motor Company' oem_web_url = 'https://www.gmc.com' oem_pic_url = 'https://github.com/Tomomi-H011/ZDEMO962/blob/main/image/GMCLogo.png' currency_code = 'USD' )

    ).

    DELETE FROM ZOEM_TBL.
    INSERT ZOEM_TBL FROM TABLE @lt_oem.
    CLEAR lt_oem.
    SELECT *
    FROM ZOEM_TBL
    INTO TABLE @lt_oem.

    IF sy-subrc IS INITIAL.
        out->write( 'Data inserted successfully into oem table.' ).
        out->write( lt_oem ).
    ENDIF.

    DATA lt_inventory TYPE STANDARD TABLE OF ZINVENTORY_TBL.

    lt_inventory = VALUE #(
        ( oem_id = 'TY' model = 'RAV4' grade = 'LE' model_year = 2025 price = '33000.00' currency_code = 'USD' vehicle_type = 'SUV' vehicles_available = 10 vehicles_ordered = 3 )
        ( oem_id = 'TY' model = 'Highlander' grade = 'Limited' model_year = 2025 price = '56000.00' currency_code = 'USD' vehicle_type = 'SUV' vehicles_available = 5 vehicles_ordered = 2 )
        ( oem_id = 'TY' model = 'Camry' grade = 'XSE' model_year = 2026 price = '37000.00' currency_code = 'USD' vehicle_type = 'Sedan' vehicles_available = 2 vehicles_ordered = 4 )
        ( oem_id = 'FD' model = 'F-150'      grade = 'Lariat'   model_year = 2025 price = '55000.00' currency_code = 'USD' vehicle_type = 'Truck' vehicles_available = 8  vehicles_ordered = 5 )
        ( oem_id = 'FD' model = 'Escape'     grade = 'SE'       model_year = 2025 price = '30000.00' currency_code = 'USD' vehicle_type = 'SUV'   vehicles_available = 6  vehicles_ordered = 2 )
        ( oem_id = 'FD' model = 'Mustang'    grade = 'GT'       model_year = 2026 price = '45000.00' currency_code = 'USD' vehicle_type = 'Coupe' vehicles_available = 3  vehicles_ordered = 1 )
        ( oem_id = 'HY' model = 'Elantra'    grade = 'SEL'      model_year = 2025 price = '23000.00' currency_code = 'USD' vehicle_type = 'Sedan' vehicles_available = 12 vehicles_ordered = 6 )
        ( oem_id = 'HY' model = 'Tucson'     grade = 'Limited'  model_year = 2025 price = '32000.00' currency_code = 'USD' vehicle_type = 'SUV'   vehicles_available = 7  vehicles_ordered = 3 )
        ( oem_id = 'HY' model = 'Santa Fe'   grade = 'Calligraphy' model_year = 2026 price = '42000.00' currency_code = 'USD' vehicle_type = 'SUV' vehicles_available = 4  vehicles_ordered = 2 )
        ( oem_id = 'GM' model = 'Sierra 1500' grade = 'Denali'  model_year = 2025 price = '62000.00' currency_code = 'USD' vehicle_type = 'Truck' vehicles_available = 5  vehicles_ordered = 2 )
        ( oem_id = 'GM' model = 'Acadia'     grade = 'SLT'      model_year = 2025 price = '42000.00' currency_code = 'USD' vehicle_type = 'SUV'   vehicles_available = 6  vehicles_ordered = 3 )
        ( oem_id = 'GM' model = 'Terrain'    grade = 'SLE'      model_year = 2026 price = '31000.00' currency_code = 'USD' vehicle_type = 'SUV'   vehicles_available = 9  vehicles_ordered = 4 )
    ).

    DELETE FROM ZINVENTORY_TBL.
    INSERT ZINVENTORY_TBL FROM TABLE @lt_inventory.
    CLEAR lt_inventory.
    SELECT *
    FROM ZINVENTORY_TBL
    INTO TABLE @lt_inventory.

    IF sy-subrc IS INITIAL.
        out->write( 'Data inserted successfully into inventory table.' ).
        out->write( lt_inventory ).
    ENDIF.



    DATA lt_models TYPE STANDARD TABLE OF ZMODELS_TBL.

    lt_models = VALUE #(

        ( oem_id = 'TY' model = 'RAV4'       grade = 'LE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'White'   number_of_seats = 5 country_built = 'Japan'       city_built = 'Toyota City' )
        ( oem_id = 'TY' model = 'RAV4'       grade = 'LE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'Black'   number_of_seats = 5 country_built = 'Japan'       city_built = 'Toyota City' )
        ( oem_id = 'TY' model = 'RAV4'       grade = 'LE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'Blue'    number_of_seats = 5 country_built = 'Japan'       city_built = 'Toyota City' )

        ( oem_id = 'TY' model = 'Highlander' grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Black'   number_of_seats = 7 country_built = 'USA'         city_built = 'Princeton' )
        ( oem_id = 'TY' model = 'Highlander' grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Silver'  number_of_seats = 7 country_built = 'USA'         city_built = 'Princeton' )
        ( oem_id = 'TY' model = 'Highlander' grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Red'     number_of_seats = 7 country_built = 'USA'         city_built = 'Princeton' )

        ( oem_id = 'TY' model = 'Camry'      grade = 'XSE'         model_year = 2026 vehicle_type = 'Sedan'
          color = 'Blue'    number_of_seats = 5 country_built = 'USA'         city_built = 'Georgetown' )
        ( oem_id = 'TY' model = 'Camry'      grade = 'XSE'         model_year = 2026 vehicle_type = 'Sedan'
          color = 'Gray'    number_of_seats = 5 country_built = 'USA'         city_built = 'Georgetown' )
        ( oem_id = 'TY' model = 'Camry'      grade = 'XSE'         model_year = 2026 vehicle_type = 'Sedan'
          color = 'White'   number_of_seats = 5 country_built = 'USA'         city_built = 'Georgetown' )

        ( oem_id = 'FD' model = 'F-150'      grade = 'Lariat'      model_year = 2025 vehicle_type = 'Truck'
          color = 'Red'     number_of_seats = 5 country_built = 'USA'         city_built = 'Dearborn' )
        ( oem_id = 'FD' model = 'F-150'      grade = 'Lariat'      model_year = 2025 vehicle_type = 'Truck'
          color = 'Blue'    number_of_seats = 5 country_built = 'USA'         city_built = 'Dearborn' )
        ( oem_id = 'FD' model = 'F-150'      grade = 'Lariat'      model_year = 2025 vehicle_type = 'Truck'
          color = 'Black'   number_of_seats = 5 country_built = 'USA'         city_built = 'Dearborn' )

        ( oem_id = 'FD' model = 'Escape'     grade = 'SE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'Silver'  number_of_seats = 5 country_built = 'USA'         city_built = 'Louisville' )
        ( oem_id = 'FD' model = 'Escape'     grade = 'SE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'Green'   number_of_seats = 5 country_built = 'USA'         city_built = 'Louisville' )
        ( oem_id = 'FD' model = 'Escape'     grade = 'SE'          model_year = 2025 vehicle_type = 'SUV'
          color = 'White'   number_of_seats = 5 country_built = 'USA'         city_built = 'Louisville' )

        ( oem_id = 'FD' model = 'Mustang'    grade = 'GT'          model_year = 2026 vehicle_type = 'Coupe'
          color = 'Yellow'  number_of_seats = 4 country_built = 'USA'         city_built = 'Flat Rock' )
        ( oem_id = 'FD' model = 'Mustang'    grade = 'GT'          model_year = 2026 vehicle_type = 'Coupe'
          color = 'Black'   number_of_seats = 4 country_built = 'USA'         city_built = 'Flat Rock' )
        ( oem_id = 'FD' model = 'Mustang'    grade = 'GT'          model_year = 2026 vehicle_type = 'Coupe'
          color = 'Blue'    number_of_seats = 4 country_built = 'USA'         city_built = 'Flat Rock' )

        ( oem_id = 'HY' model = 'Elantra'    grade = 'SEL'         model_year = 2025 vehicle_type = 'Sedan'
          color = 'Gray'    number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )
        ( oem_id = 'HY' model = 'Elantra'    grade = 'SEL'         model_year = 2025 vehicle_type = 'Sedan'
          color = 'White'   number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )
        ( oem_id = 'HY' model = 'Elantra'    grade = 'SEL'         model_year = 2025 vehicle_type = 'Sedan'
          color = 'Black'   number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )

        ( oem_id = 'HY' model = 'Tucson'     grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Green'   number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )
        ( oem_id = 'HY' model = 'Tucson'     grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Black'   number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )
        ( oem_id = 'HY' model = 'Tucson'     grade = 'Limited'     model_year = 2025 vehicle_type = 'SUV'
          color = 'Blue'    number_of_seats = 5 country_built = 'South Korea' city_built = 'Ulsan' )

        ( oem_id = 'HY' model = 'Santa Fe'   grade = 'Calligraphy' model_year = 2026 vehicle_type = 'SUV'
          color = 'White'   number_of_seats = 7 country_built = 'South Korea' city_built = 'Asan' )
        ( oem_id = 'HY' model = 'Santa Fe'   grade = 'Calligraphy' model_year = 2026 vehicle_type = 'SUV'
          color = 'Gray'    number_of_seats = 7 country_built = 'South Korea' city_built = 'Asan' )
        ( oem_id = 'HY' model = 'Santa Fe'   grade = 'Calligraphy' model_year = 2026 vehicle_type = 'SUV'
          color = 'Black'   number_of_seats = 7 country_built = 'South Korea' city_built = 'Asan' )

        ( oem_id = 'GM' model = 'Sierra 1500' grade = 'Denali'     model_year = 2025 vehicle_type = 'Truck'
          color = 'Black'   number_of_seats = 5 country_built = 'Canada'      city_built = 'Oshawa' )
        ( oem_id = 'GM' model = 'Sierra 1500' grade = 'Denali'     model_year = 2025 vehicle_type = 'Truck'
          color = 'White'   number_of_seats = 5 country_built = 'Canada'      city_built = 'Oshawa' )
        ( oem_id = 'GM' model = 'Sierra 1500' grade = 'Denali'     model_year = 2025 vehicle_type = 'Truck'
          color = 'Gray'    number_of_seats = 5 country_built = 'Canada'      city_built = 'Oshawa' )

        ( oem_id = 'GM' model = 'Acadia'     grade = 'SLT'         model_year = 2025 vehicle_type = 'SUV'
          color = 'White'   number_of_seats = 7 country_built = 'USA'         city_built = 'Lansing' )
        ( oem_id = 'GM' model = 'Acadia'     grade = 'SLT'         model_year = 2025 vehicle_type = 'SUV'
          color = 'Black'   number_of_seats = 7 country_built = 'USA'         city_built = 'Lansing' )
        ( oem_id = 'GM' model = 'Acadia'     grade = 'SLT'         model_year = 2025 vehicle_type = 'SUV'
          color = 'Silver'  number_of_seats = 7 country_built = 'USA'         city_built = 'Lansing' )

        ( oem_id = 'GM' model = 'Terrain'    grade = 'SLE'         model_year = 2026 vehicle_type = 'SUV'
          color = 'Silver'  number_of_seats = 5 country_built = 'Mexico'      city_built = 'San Luis Potosi' )
        ( oem_id = 'GM' model = 'Terrain'    grade = 'SLE'         model_year = 2026 vehicle_type = 'SUV'
          color = 'Blue'    number_of_seats = 5 country_built = 'Mexico'      city_built = 'San Luis Potosi' )
        ( oem_id = 'GM' model = 'Terrain'    grade = 'SLE'         model_year = 2026 vehicle_type = 'SUV'
          color = 'Red'   number_of_seats = 5 country_built = 'Mexico'      city_built = 'San Luis Potosi' )
    ).


    DELETE FROM ZMODELS_TBL.
    INSERT ZMODELS_TBL FROM TABLE @lt_models.
    CLEAR lt_models.
    SELECT *
    FROM ZMODELS_TBL
    INTO TABLE @lt_models.

    IF sy-subrc IS INITIAL.
        out->write( 'Data inserted successfully into models table.' ).
        out->write( lt_models ).
    ENDIF.


    DATA lt_customer TYPE STANDARD TABLE OF zcustomer_962_tb.

    lt_customer = value #(

    ( customer_id       = 'C000125'
    first_name        = 'John'
    last_name         = 'Adams'
    title             = 'Mr.'
    street            = '101 First Ave'
    postal_code       = '10001'
    city              = 'New York'
    country_code      = 'US'
    phone_number      = '+1-555-1001'
    email_address     = 'john.adams@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000201'
    first_name        = 'Emily'
    last_name         = 'Brown'
    title             = 'Ms.'
    street            = '202 Market St'
    postal_code       = '60601'
    city              = 'Chicago'
    country_code      = 'US'
    phone_number      = '+1-555-1002'
    email_address     = 'emily.brown@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000305'
    first_name        = 'Michael'
    last_name         = 'Chen'
    title             = 'Mr.'
    street            = '303 King Rd'
    postal_code       = '94105'
    city              = 'San Francisco'
    country_code      = 'US'
    phone_number      = '+1-555-1003'
    email_address     = 'michael.chen@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000410'
    first_name        = 'Sarah'
    last_name         = 'Davis'
    title             = 'Mrs.'
    street            = '410 Pine St'
    postal_code       = '48226'
    city              = 'Detroit'
    country_code      = 'US'
    phone_number      = '+1-555-1004'
    email_address     = 'sarah.davis@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000512'
    first_name        = 'Michael'
    last_name         = 'Brown'
    title             = 'Mr.'
    street            = '512 Maple Ave'
    postal_code       = '30318'
    city              = 'Atlanta'
    country_code      = 'US'
    phone_number      = '+1-555-2005'
    email_address     = 'michael.brown@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000678'
    first_name        = 'Emily'
    last_name         = 'Wilson'
    title             = 'Ms.'
    street            = '678 Oak Blvd'
    postal_code       = '60616'
    city              = 'Chicago'
    country_code      = 'US'
    phone_number      = '+1-555-3006'
    email_address     = 'emily.wilson@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000725'
    first_name        = 'David'
    last_name         = 'Martinez'
    title             = 'Mr.'
    street            = '725 Elm Dr'
    postal_code       = '75201'
    city              = 'Dallas'
    country_code      = 'US'
    phone_number      = '+1-555-4007'
    email_address     = 'david.martinez@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000845'
    first_name        = 'Olivia'
    last_name         = 'Taylor'
    title             = 'Dr.'
    street            = '845 Birch Ln'
    postal_code       = '98101'
    city              = 'Seattle'
    country_code      = 'US'
    phone_number      = '+1-555-5008'
    email_address     = 'olivia.taylor@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C000950'
    first_name        = 'James'
    last_name         = 'Anderson'
    title             = 'Mr.'
    street            = '950 Cedar Ct'
    postal_code       = '64111'
    city              = 'Kansas City'
    country_code      = 'US'
    phone_number      = '+1-555-6009'
    email_address     = 'james.anderson@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001025'
    first_name        = 'Sophia'
    last_name         = 'Harris'
    title             = 'Ms.'
    street            = '1025 Walnut St'
    postal_code       = '63101'
    city              = 'St. Louis'
    country_code      = 'US'
    phone_number      = '+1-555-7010'
    email_address     = 'sophia.harris@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001150'
    first_name        = 'Daniel'
    last_name         = 'Clark'
    title             = 'Mr.'
    street            = '1150 Spruce Way'
    postal_code       = '37219'
    city              = 'Nashville'
    country_code      = 'US'
    phone_number      = '+1-555-8011'
    email_address     = 'daniel.clark@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001278'
    first_name        = 'Ava'
    last_name         = 'Lewis'
    title             = 'Mrs.'
    street            = '1278 Chestnut Rd'
    postal_code       = '19103'
    city              = 'Philadelphia'
    country_code      = 'US'
    phone_number      = '+1-555-9012'
    email_address     = 'ava.lewis@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001279'
    first_name        = 'Olivia'
    last_name         = 'Green'
    title             = 'Ms.'
    street            = '279 Elm St'
    postal_code       = '60601'
    city              = 'Chicago'
    country_code      = 'US'
    phone_number      = '+1-555-1279'
    email_address     = 'olivia.green@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001280'
    first_name        = 'Ethan'
    last_name         = 'Roberts'
    title             = 'Mr.'
    street            = '280 Maple Ave'
    postal_code       = '75201'
    city              = 'Dallas'
    country_code      = 'US'
    phone_number      = '+1-555-1280'
    email_address     = 'ethan.roberts@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001281'
    first_name        = 'Sophia'
    last_name         = 'Martinez'
    title             = 'Mrs.'
    street            = '281 Oak Dr'
    postal_code       = '33101'
    city              = 'Miami'
    country_code      = 'US'
    phone_number      = '+1-555-1281'
    email_address     = 'sophia.martinez@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001282'
    first_name        = 'James'
    last_name         = 'Walker'
    title             = 'Mr.'
    street            = '282 Cedar Rd'
    postal_code       = '10001'
    city              = 'New York'
    country_code      = 'US'
    phone_number      = '+1-555-1282'
    email_address     = 'james.walker@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001283'
    first_name        = 'Ava'
    last_name         = 'Johnson'
    title             = 'Ms.'
    street            = '283 Birch Ln'
    postal_code       = '85001'
    city              = 'Phoenix'
    country_code      = 'US'
    phone_number      = '+1-555-1283'
    email_address     = 'ava.johnson@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001284'
    first_name        = 'William'
    last_name         = 'Harris'
    title             = 'Mr.'
    street            = '284 Willow St'
    postal_code       = '94101'
    city              = 'San Francisco'
    country_code      = 'US'
    phone_number      = '+1-555-1284'
    email_address     = 'william.harris@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001285'
    first_name        = 'Isabella'
    last_name         = 'Clark'
    title             = 'Mrs.'
    street            = '285 Spruce Blvd'
    postal_code       = '30301'
    city              = 'Atlanta'
    country_code      = 'US'
    phone_number      = '+1-555-1285'
    email_address     = 'isabella.clark@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001286'
    first_name        = 'Benjamin'
    last_name         = 'Lewis'
    title             = 'Mr.'
    street            = '286 Aspen Ct'
    postal_code       = '98101'
    city              = 'Seattle'
    country_code      = 'US'
    phone_number      = '+1-555-1286'
    email_address     = 'benjamin.lewis@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001287'
    first_name        = 'Mia'
    last_name         = 'Hall'
    title             = 'Ms.'
    street            = '287 Poplar Way'
    postal_code       = '19103'
    city              = 'Philadelphia'
    country_code      = 'US'
    phone_number      = '+1-555-1287'
    email_address     = 'mia.hall@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

  ( customer_id       = 'C001288'
    first_name        = 'Lucas'
    last_name         = 'Young'
    title             = 'Mr.'
    street            = '288 Magnolia Ave'
    postal_code       = '63101'
    city              = 'St. Louis'
    country_code      = 'US'
    phone_number      = '+1-555-1288'
    email_address     = 'lucas.young@example.com'
    local_created_by  = sy-uname
    local_created_at  = cl_abap_context_info=>get_system_time( )
    local_last_changed_by = sy-uname
    local_last_changed_at = cl_abap_context_info=>get_system_time( )
    last_changed_at   = cl_abap_context_info=>get_system_time( ) )

).

    DELETE FROM zcustomer_962_tb.
    INSERT zcustomer_962_tb FROM TABLE @lt_customer.
    CLEAR lt_customer.
    SELECT *
    FROM zcustomer_962_tb
    INTO TABLE @lt_customer.

    IF sy-subrc IS INITIAL.
        out->write( 'Data inserted successfully into oem table.' ).
        out->write( lt_customer ).
    ENDIF.


    DATA lt_order TYPE STANDARD TABLE OF ZORDER_TBL.
    out->write( 'start order table' ).

    lt_order = VALUE #(
     ( order_id = '1000001' order_date = '20250312' customer_id = 'C000125'
        oem_id = 'TY' model = 'RAV4' grade = 'LE' model_year = '2025' color = 'Black' price = '33000.00'
        currency_code = 'USD' delivery_date = '20250328'
        created_by = 'E002000789' last_changed_by = 'E002000015' local_last_changed_at = '20250404194808.0000000' )

      ( order_id = '1000002' order_date = '20250815' customer_id = 'C000201'
      oem_id = 'TY' model = 'Highlander' grade = 'Limited' model_year = '2025' color = 'Silver' price = '56000.00'
      currency_code = 'USD'
      created_by = 'E002000456' last_changed_by = 'E002000321' local_last_changed_at = '20250405121030.0000000' )

    ( order_id = '1000003' order_date = '20250818' customer_id = 'C000305'
      oem_id = 'TY' model = 'Camry' grade = 'XSE' model_year = '2026' color = 'Gray' price = '37000.00'
      currency_code = 'USD'
      created_by = 'E002000122' last_changed_by = 'E002000200' local_last_changed_at = '20250406101545.0000000' )

    ( order_id = '1000004' order_date = '20250320' customer_id = 'C000410'
      oem_id = 'FD' model = 'F-150' grade = 'Lariat' model_year = '2025' color = 'Blue' price = '55000.00'
      currency_code = 'USD' delivery_date = '20250408'
      created_by = 'E002000333' last_changed_by = 'E002000789' local_last_changed_at = '20250407183220.0000000' )

    ( order_id = '1000005' order_date = '20250821' customer_id = 'C000512'
      oem_id = 'FD' model = 'Escape' grade = 'SE' model_year = '2025' color = 'Green' price = '30000.00'
      currency_code = 'USD'
      created_by = 'E002000900' last_changed_by = 'E002000555' local_last_changed_at = '20250408115010.0000000' )

    ( order_id = '1000006' order_date = '20250323' customer_id = 'C000678'
      oem_id = 'FD' model = 'Mustang' grade = 'GT' model_year = '2026' color = 'Black' price = '45000.00'
      currency_code = 'USD' delivery_date = '20250415'
      created_by = 'E002000101' last_changed_by = 'E002000202' local_last_changed_at = '20250409141255.0000000' )

    ( order_id = '1000007' order_date = '20250325' customer_id = 'C000725'
      oem_id = 'HY' model = 'Elantra' grade = 'SEL' model_year = '2025' color = 'White' price = '23000.00'
      currency_code = 'USD' delivery_date = '20250412'
      created_by = 'E002000303' last_changed_by = 'E002000404' local_last_changed_at = '20250410122345.0000000' )

    ( order_id = '1000008' order_date = '20250326' customer_id = 'C000845'
      oem_id = 'HY' model = 'Tucson' grade = 'Limited' model_year = '2025' color = 'Blue' price = '32000.00'
      currency_code = 'USD' delivery_date = '20250414'
      created_by = 'E002000505' last_changed_by = 'E002000606' local_last_changed_at = '20250411190811.0000000' )

    ( order_id = '1000009' order_date = '20250328' customer_id = 'C000950'
      oem_id = 'HY' model = 'Santa Fe' grade = 'Calligraphy' model_year = '2026' color = 'White' price = '42000.00'
      currency_code = 'USD' delivery_date = '20250418'
      created_by = 'E002000707' last_changed_by = 'E002000808' local_last_changed_at = '20250412103322.0000000' )

    ( order_id = '1000010' order_date = '20250330' customer_id = 'C001025'
      oem_id = 'GM' model = 'Sierra 1500' grade = 'Denali' model_year = '2025' color = 'Gray' price = '62000.00'
      currency_code = 'USD' delivery_date = '20250420'
      created_by = 'E002000909' last_changed_by = 'E002000111' local_last_changed_at = '20250413191500.0000000' )

    ( order_id = '1000011' order_date = '20250401' customer_id = 'C001150'
      oem_id = 'GM' model = 'Acadia' grade = 'SLT' model_year = '2025' color = 'Silver' price = '42000.00'
      currency_code = 'USD' delivery_date = '20250422'
      created_by = 'E002000222' last_changed_by = 'E002000333' local_last_changed_at = '20250414170055.0000000' )

    ( order_id = '1000012' order_date = '20250803' customer_id = 'C001278'
      oem_id = 'GM' model = 'Terrain' grade = 'SLE' model_year = '2026' color = 'Red' price = '31000.00'
      currency_code = 'USD'
      created_by = 'E002000444' last_changed_by = 'E002000555' local_last_changed_at = '20250815111844.0000000' )
    ).


    DELETE FROM ZORDER_TBL.
    INSERT ZORDER_TBL FROM TABLE @lt_order.
    CLEAR lt_order.
    SELECT *
    FROM ZORDER_TBL
    INTO TABLE @lt_order.

    IF sy-subrc = 0.
        out->write( 'Data inserted successfully into order table.' ).
        out->write( lt_order ).
    ELSE.
        out->write( | 'error', sy-subrc = { sy-subrc } | ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
