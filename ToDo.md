# To Do
## Classes


- [x] DS3_Response -- Result of API search (count, weapon hash (ID for key and value for weapon), result array (array of ID results)
    - [ ] 
- [x] Weapon (within ds3_weapons hash)
    - [ ] 
- [x] ID Results (2 properties: ID and Key)
- [ ] Armor(?)

- retrieve data and translate JSON into classes and print them out (retrieve one item and serialize it?) 
  https://mugenmonkey.com/api/v0/ds3_weapons?per_page=1

main.rb needs to ask the API for data and then serialize it. Use gems/bundles/parser.

- [x] make sure input doesn't do -1 and return the last entry
- [x] make sure to return failed if they input a string instead of a number
- [ ] smooth out the transition after selecting a weapon at the end
- [ ] make sure user can exit out of second input