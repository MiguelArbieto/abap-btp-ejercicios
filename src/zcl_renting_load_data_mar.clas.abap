CLASS zcl_renting_load_data_mar DEFINITION
PUBLIC
FINAL
CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RENTING_LOAD_DATA_MAR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_brands    TYPE TABLE OF zrent_brands_mar,
          lt_cars      TYPE TABLE OF zrent_cars_mar,
          lt_customers TYPE TABLE OF zrent_cust_mar.

** BRANDS **

    lt_brands = VALUE #(
    ( marca = 'ASTON MARTIN' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'AUDI' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'BENTLEY' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'BUGATTI' url = 'https://wtfonline.mx/wp-content/uploads/2018/12/buggatti.jpg')
    ( marca = 'FERRARI' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'FORD' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'HONDA' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'JEEP' url = 'https://s.aolcdn.com/commerce/autodata/images/USC80JES162A021001.jpg')
    ( marca = 'KIA' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'MERCEDES' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'MINI' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'SEAT' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'VW' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ( marca = 'BMW' url = 'https://s.aolcdn.com/commerce/autodata/images/USC70MNC091B021001.jpg')
    ).
    DELETE FROM zrent_brands_mar.
    INSERT zrent_brands_mar FROM TABLE @lt_brands.
    SELECT * FROM zrent_brands_mar INTO TABLE @lt_brands.
    out->write( sy-dbcnt ).
    out->write( 'zrent_brands data inserted successfully!').

** CARS**

    lt_cars = VALUE #(
    ( matricula = '1246GSA' marca = 'BMW' modelo = 'SERIE 4' color = 'BLANCO' motor = '2.5' potencia = '210' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20220418' puertas = '5' precio = '210.00' moneda = 'USD' alquilado = 'X' alq_desde = '20231201' alq_hasta = '20231231' )
    ( matricula = '2174FHF' marca = 'KIA' modelo = 'CEE''D' color = 'AZUL' motor = '4.2' potencia = '340' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '10.00' fecha_fabr = '20230617' puertas = '5' precio = '160.00' moneda = 'USD' alquilado = 'X' alq_desde = '20240801' alq_hasta = '20240831' )
    ( matricula = '2356FSF' marca = 'AUDI' modelo = 'A8' color = 'BLANCO' motor = '3.9' potencia = '140' und_potencia = 'CV'
    combustible = 'ELECTRIC' consumo = '00.00' fecha_fabr = '20220304' puertas = '3' precio = '140.00' moneda = 'USD' alquilado = 'X' alq_desde = '20240701' alq_hasta = '20240708' )
    ( matricula = '2392JFH' marca = 'JEEP' modelo = 'GRAND CHEROKEE' color = 'BLANCO' motor = '3.6' potencia = '176' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '12.00' fecha_fabr = '20220924' puertas = '5' precio = '160.00' moneda = 'USD' alquilado = 'X' alq_desde = '20240601' alq_hasta = '20241001' )
    ( matricula = '2837KFF' marca = 'MERCEDES' modelo = 'CLASE B' color = 'NEGRO' motor = '2.0' potencia = '200' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20220726' puertas = '5' precio = '160.00' moneda = 'USD' alquilado = 'X' alq_desde = '20230301' alq_hasta = '20231001' )
    ( matricula = '2837SUF' marca = 'MERCEDES' modelo = 'CLASE C' color = 'AMARILLO' motor = '3.0' potencia = '220' und_potencia = 'CV'
    combustible = 'GASOLINA' consumo = '6.00' fecha_fabr = '20220614' puertas = '5' precio = '180.00' moneda = 'USD' alquilado = 'X' alq_desde = '20231201' alq_hasta = '20231206' )
    ( matricula = '2847JGH' marca = 'HONDA' modelo = 'CARENS' color = 'NEGRO' motor = '1.9' potencia = '180' und_potencia = 'CV'
    combustible = 'DIESEL' consumo = '5.00' fecha_fabr = '20230716' puertas = '5' precio = '180.00' moneda = 'USD' alquilado = 'X' alq_desde = '20231201' alq_hasta = '20231206' )
    ( matricula = '29348KJ' marca = 'MINI' modelo = 'CABRIO' color = 'AMARILLO' motor = '2.0' potencia = '240' und_potencia = 'CV'
    combustible = 'ELECTRIC' consumo = '0.00' fecha_fabr = '20220812' puertas = '3' precio = '150.00' moneda = 'USD' alquilado = 'X' alq_desde = '20231106' alq_hasta = '20231206' )
    ).
    DELETE FROM zrent_cars_mar.
    INSERT zrent_cars_mar FROM TABLE @lt_cars.
    SELECT * FROM zrent_cars_mar INTO TABLE @lt_cars.
    out->write( sy-dbcnt ).out->write( 'zrent_cars data inserted successfully!').

** CUSTOMERS**

    lt_customers = VALUE #(
    ( doc_id = '005638984K' matricula = '8764FGH' nombres = 'Olivia' apellidos = 'Allan' email = 'olivia.allan@email.com' cntr_type = 'C1' )
    ( doc_id = '982356739N' matricula = '8764FGH' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '453532543O' matricula = '8764FGH' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
    ( doc_id = '005632984R' matricula = '1246GSA' nombres = 'John' apellidos = 'Allan' email = 'john.allan@email.com' cntr_type = 'C3' )
    ( doc_id = '982367739N' matricula = '1246GSA' nombres = 'Clark' apellidos = 'Allan' email = 'clark.slater@email.com' cntr_type = 'C2' )
    ( doc_id = '340958439D' matricula = '29348KJ' nombres = 'Michael' apellidos = 'Short' email = 'michael.short@email.com' cntr_type = 'C1' )
    ( doc_id = '964356739N' matricula = '29348KJ' nombres = 'Robert' apellidos = 'Allan' email = 'robert.slater@email.com' cntr_type = 'C1' )
    ( doc_id = '340458439D' matricula = '2847JGH' nombres = 'Cole' apellidos = 'Short' email = 'cole.short@email.com' cntr_type = 'C2' )
    ( doc_id = '340958438D' matricula = '2827SAF' nombres = 'George' apellidos = 'Short' email = 'george.short@email.com' cntr_type = 'C3' )
    ( doc_id = '859675368G' matricula = '2827SAF' nombres = 'Sonny' apellidos = 'Wright' email = 'sonny.wright@email.com' cntr_type = 'C2' )
    ( doc_id = '859675388V' matricula = '2827SAF' nombres = 'Evelyn' apellidos = 'Wright' email = 'evelyn.wright@email.com' cntr_type = 'C2' )
    ( doc_id = '340952439D' matricula = '2837KFF' nombres = 'Avery' apellidos = 'Short' email = 'avery.short@email.com' cntr_type = 'C4' )
    ( doc_id = '859675388G' matricula = '2837KFF' nombres = 'Madison' apellidos = 'Wright' email = 'madison.wright@email.com' cntr_type = 'C1' )
    ( doc_id = '982656739N' matricula = '2837SUF' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '345093450E' matricula = '2425SFA' nombres = 'Sue' apellidos = 'Sanderson' email = 'sue.sanderson@email.com' cntr_type = 'C1' )
    ( doc_id = '852367586F' matricula = '2425SFA' nombres = 'Eric' apellidos = 'Berry' email = 'eric.berry@email.com' cntr_type = 'C4' )
    ( doc_id = '345093850A' matricula = '2392JFH' nombres = 'Lily' apellidos = 'Sanderson' email = 'lily.sanderson@email.com' cntr_type = 'C3' )
    ( doc_id = '489632862G' matricula = '2329HFS' nombres = 'Neil' apellidos = 'Welch' email = 'neil.welch@email.com' cntr_type = 'C2' )
    ( doc_id = '345234534M' matricula = '2329HFS' nombres = 'Lily' apellidos = 'Langdon' email = 'lily.langdon@email.com' cntr_type = 'C1' )
    ( doc_id = '453572543O' matricula = '2329HFS' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C4' )
    ( doc_id = '345839534R' matricula = '2356FSF' nombres = 'Andrew' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'C2' )
    ( doc_id = '852327586F' matricula = '2392JFH' nombres = 'Addison' apellidos = 'Berry' email = 'addison.berry@email.com' cntr_type = 'C2' )
    ( doc_id = '345831534R' matricula = '2174FHF' nombres = 'Lucy' apellidos = 'Langdon' email = 'lucy.langdon@email.com' cntr_type = 'C0' )
    ( doc_id = '489612882D' matricula = '2174FHF' nombres = 'Julian' apellidos = 'Welch' email = 'julian.welch@email.com' cntr_type = 'C1' )
    ( doc_id = '348941597P' matricula = '2188SJS' nombres = 'Cooper' apellidos = 'Davies' email = 'cooper.davies@email.com' cntr_type = 'C1' )
    ( doc_id = '348947997P' matricula = '1246GSA' nombres = 'Lillian' apellidos = 'Davies' email = 'lillian.davies@email.com' cntr_type = 'C2' )
    ( doc_id = '430958233A' matricula = '2174FHF' nombres = 'Wendy' apellidos = 'Short' email = 'wendy.short@email.com' cntr_type = 'C4' )
    ( doc_id = '453832543O' matricula = '4545ABC' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
    ( doc_id = '982124739N' matricula = '2148AFS' nombres = 'Tyler' apellidos = 'Slater' email = 'tyler.slater@email.com' cntr_type = 'C3' )
    ( doc_id = '982356839W' matricula = '5235HER' nombres = 'Parker' apellidos = 'Slater' email = 'parker.slater@email.com' cntr_type = 'C3' )
    ).
    DELETE FROM zrent_cust_mar.
    INSERT zrent_cust_mar FROM TABLE @lt_customers.
    SELECT * FROM zrent_cust_mar INTO TABLE @lt_customers.
    out->write( sy-dbcnt ).
    out->write( 'zrent_customers data inserted successfully!').

  ENDMETHOD.
ENDCLASS.
