*** Variables ***

# Page Links Locators
${SIGN_IN_LOCATOR}                      //a[@class='login']
${SIGN_OUT_LOCATOR}                     //a[@class='logout']
${CONTACT_US_LOCATOR}                   //div[@id='contact-link']//a[contains(text(),'Contact us')]
${INDEX_LOCATOR}                        //div[@id='header_logo']//a[@href='http://automationpractice.com/']
${WOMEN_LISTING_LOCATOR}                //ul[contains(@class,'sf-menu')]/li/a[contains(text(),'Women')]
${DRESSES_LISTING_LOCATOR}              //ul[contains(@class,'sf-menu')]/li/a[contains(text(),'Dresses')]
${T-SHIRT_LISTING_LOCATOR}              //ul[contains(@class,'sf-menu')]/li/a[contains(text(),'T-shirts')]
${SPECIALS_LOCATOR}                     //li[@class='item']//a[contains(text(),'Specials')]
${NEW_PRODUCTS_LOCATOR}                 //li[@class='item']//a[contains(text(),'New products')]
${BEST_SELLERS_LOCATOR}                 //li[@class='item']//a[contains(text(),'Best sellers')]
${OUR_STORES_LOCATOR}                   //li[@class='item']//a[contains(text(),'Our stores')]
${TERMS_AND_CONDITIONS_LOCATOR}         //li[@class='item']//a[contains(text(),'Terms and conditions of use')]
${ABOUT_US_LOCATOR}                     //li[@class='item']//a[contains(text(),'About us')]
${SITEMAP_LOCATOR}                      //li//a[contains(text(),'Sitemap')]
${SHOPPING_CART_LOCATOR}                //div[@class='shopping_cart']/a[contains(@title,'shopping cart')]

# Verification Locators
${SIGN_IN_VALIDATOR}                //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Authentication')]
${CONTACT_US_VALIDATOR}             //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Contact')]
${INDEX_VALIDATOR}                  //div[@id='homepage-slider']
${WOMEN_LISTING_VALIDATOR}          //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Women')]
${DRESSES_LISTING_VALIDATOR}        //div[text()[contains(.,'Dresses')] and contains(@class,'breadcrum')]
${T-SHIRT_LISTING_VALIDATOR}        //div[text()[contains(.,'T-shirts')] and contains(@class,'breadcrum')]
${SPECIALS_VALIDATOR}               //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Price drop')]
${NEW_PRODUCTS_VALIDATOR}           //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'New products')]
${BEST_SELLERS_VALIDATOR}           //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Best sellers')]
${OUR_STORES_VALIDATOR}             //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Our store')]
${TERMS_AND_CONDITIONS_VALIDATOR}   //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Terms and conditions')]
${ABOUT_US_VALIDATOR}               //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'About us')]
${SITEMAP_VALIDATOR}                //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Sitemap')]
${SHOPPING_CART_VALIDATOR}          //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'Your shopping cart')]
${MY_ACCOUNT_VALIDATOR}             //span[contains(@class, 'navigation_page') and contains(normalize-space(text()),'My account')]


#Login Locators
${USERNAME_LOCATOR}                 //input[@id='email']
${PASSWORD_LOCATOR}                 //input[@id='passwd']
${LOGIN_SUBMIT_LOCATOR}             //button[@id='SubmitLogin']

#Sign Up Locators
${SIGN_UP_VALIDATOR}                //div[@id='noSlide']/h1[text()='Create an account']
${CREATE_EMAIL_LOCATOR}             //input[@id='email_create']
${SUBMIT_CREATE_LOCATOR}            //button[@id='SubmitCreate']
${EMAIL_ALREADY_EXISTS_ERROR}       An account using this email address has already been registered. Please enter a valid password or request a new one.
${USER_FIRSTNAME_LOCATOR}           //input[@id='customer_firstname']
${USER_LASTNAME_LOCATOR}            //input[@id='customer_lastname']
${FIRSTNAME_LOCATOR}                //input[@id='firstname']
${LASTNAME_LOCATOR}                 //input[@id='lastname']
${ADDRESS_LOCATOR}                  //input[@id='address1']
${CITY_LOCATOR}                     //input[@id='city']
${STATE_LOCATOR}                    //select[@id='id_state']
${ZIP_CODE_LOCATOR}                 //input[@id='postcode']
${MOBILE_PHONE_LOCATOR}             //input[@id='phone_mobile']
${ADDRESS_ALIAS_LOCATOR}            //input[@id='alias']
${REGISTER_BUTTON_LOCATOR}          //button[@id='submitAccount']

#Listing Page
${WOMEN_TAB_LOCATOR}                //a[@class='sf-with-ul'][contains(text(),'Women')]
${DRESSES_SUBTAB_LOCATOR}
${SUMMER_DRESSES_OPTION_LOCATOR}    //ul[contains(@class,'submenu-container')]//ul//li//a[contains(text(),'Summer Dresses')]
${SUMMER_DRESSES_PAGE_VALIDATOR}    //div[text()[contains(.,'Summer Dresses')] and contains(@class,'breadcrum')]
${SIZE_S_FILTER_LOCATOR}            //input[@id='layered_id_attribute_group_1']
${SORT_DROPDOWN_LOCATOR}            //select[@id='selectProductSort']
${PRODUCT_ITEM_LOCATOR}             //ul[contains(@class,'product_list')]/li
${PRODUCT_NAME_LOCATOR}             //div[@class='right-block']/h5/a[@class='product-name']
${PRODUCT_PRICE_LOCATOR}            //div[@class='right-block']//span[@class='price product-price']
${LOADER_LOCATOR}                   //ul[contains(@class,'product_list')]//p[text()[contains(.,'Loading')]]

#Checkout
${ADD_TO_CART_BUTTON_LOCATOR}               //ul[@id='homefeatured']/li[1]//a[contains(@class,'ajax_add_to_cart_button ')]
${FIRST_ITEM_LOCATOR}                       //ul[@id='homefeatured']/li
${ITEM_ADDED_IN_CART_MESSAGE}               Product successfully added to your shopping cart
${CHECKOUT_BUTTON_LOCATOR}                  //div[contains(@class,'button-container')]/a[@title='Proceed to checkout']
${ITEM_IN_CART_LOCATOR}                     //span[@class='heading-counter']
${CART_NAVIGATE_NEXT_BUTTON_LOCATOR}        //p[contains(@class,'cart_navigation')]//span[contains(text(),'Proceed to checkout')]
${ADDRESS_DROPDOWN_LOCATOR}                 //select[@id='id_address_delivery']
${BILLING_ADDRESS_DROPDOWN_LOCATOR}         //select[@id='id_address_invoice']
${TERMS_SERVICE_ALERT_LOCATOR}              //p[@class='fancybox-error']
${TERMS_SERVICE_ALERT_CLOSE_LOCATOR}        //a[@title='Close']
${TERMS_SERVICE_ALERT_CHECKBOX_LOCATOR}     //input[@id='cgv']
${PAY_BY_CHECK_LOCATOR}                     //a[@class='cheque']
${PAY_BY_BANK_WIRE_LOCATOR}                 //a[@class='bankwire']
${PAY_BY_CHECK_VALIDATOR}                   //form//h3[contains(text(),'Check payment')]
${PAY_BY_BANK_WIRE_VALIDATOR}               //form//h3[contains(text(),'Bank-wire payment')]
${CONFIRM_ORDER_BUTTON}                     //span[contains(text(),'I confirm my order')]
${ORDER_SUCCESS_MESSAGE}                    Your order on My Store is complete.
${ADD_NEW_ADDRESS_LOCATOR}                  //p[contains(@class,'address_add')]//a[@title='Add']
${ADD_NEW_ADDRESS_VALIDATOR}                //h1[text()='Your addresses']
${SAVE_NEW_ADDRESS_LOCATOR}                 //button[@id='submitAddress']
${SELECT_DIFFERENT_ADDRESS_LOCATOR}         //input[@id='addressesAreEquals']

