# RandomGenerator
Generate alphanumeric random identifiers

## Setup & Use
1. Deploy the apex classes in your org
1. Generate identifiers:
    1. Indicate the identifier length
    1. Generate identifiers
        - Generate uppercase identifiers
            ```
            Integer length = 6;
            String identifier36 = RandomGeneratorId.getIdBase36(length);
            System.debug(identifier36);
            ```
        - Generate case sensitive identifiers
            ```
            Integer length = 6;
            String identifier62 = RandomGeneratorId.getIdBase62(length);
            System.debug(identifier62);
            ```
The number of possible unique identifiers is *base<sup>length</sup>*, e.g. with 6 chars:
- Base 36: $36^6 = 2.176.782.336$ ~ 2 billion unique identifiers
- Base 62: $62^6 = 56.800.235.584$ ~ 56 billion unique identifiers

List of chars to generate the identifiers:

*0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz*

## Example
### Uppercase identifiers (Base 62)
````
Integer length = 6;
String identifier36 = RandomGeneratorId.getIdBase36(length);
System.debug(identifier36);
//Output: 0EAWWR
````
### Case sensitive identifiers (Base 62)
````
Integer length = 6;
String identifier62 = RandomGeneratorId.getIdBase62(length);
System.debug(identifier62);
//Output: C9CetV
````