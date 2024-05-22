-- -----------------------------------------------------------------------------------------
                                    -- 1. MySQL - Basics
-- -----------------------------------------------------------------------------------------

-- [1] What is MySQL?
/*
    1. MySQL is currently the most popular database management system software used for managing the relational database. It is open-source database software, which is supported by Oracle Company.

    2. MySQL is a Relational Database Management System (RDBMS) software that provides many things, which are as follows:

        2.1. It allows us to implement database operations on tables, rows, columns, and indexes.
        2.2. It defines the database relationship in the form of tables (collection of rows and columns), also known as relations.
        2.3. It provides the Referential Integrity between rows or columns of various tables.
        2.4. It allows us to updates the table indexes automatically.
        2.5. It uses many SQL queries and combines useful information from multiple tables for the end-users.
*/

-- [2] MySQL Features:
/*
    1. Relational Database Management System (RDBMS) 
    2. Easy to use
    3. It is secure
    4. Client/ Server Architecture
    5. Free to download
    6. It is scalable
    7. Speed
    8. High Flexibility
    9. Compatible on many operating systems
    10. Allows roll-back
    11. Memory efficiency
    12. High Performance
    13. High Productivity
    14. Platform Independent
    15. Partitioning
    16. GUI Support
    17. Dual Password Support
*/

-- [3] Disadvantages/Drawback of MySQL
/*

    1. MySQL version less than 5.0 doesn't support ROLE, COMMIT, and stored procedure.
    2. MySQL does not support a very large database size as efficiently.
    3. MySQL doesn't handle transactions very efficiently, and it is prone to data corruption.
    4. MySQL is accused that it doesn't have a good developing and debugging tool compared to paid databases.
    5. MySQL doesn't support SQL check constraints.   
*/

-- [4] MySQL Data Types:
/*
    A Data Type specifies a particular type of data, like integer, floating points, Boolean, etc. It also identifies the possible values for that type, the operations that can be performed on that type, and the way the values of that type are stored.

    1. Numeric Data Type:

        1.1 TINYINT: 
            It is a very small integer that can be signed or unsigned. If signed, the allowable range is from -128 to 127. If unsigned, the allowable range is from 0 to 255. We can specify a width of up to 4 digits. It takes 1 byte for storage.
        
        1.2 SMALLINT:    
            It is a small integer that can be signed or unsigned. If signed, the allowable range is from -32768 to 32767. If unsigned, the allowable range is from 0 to 65535. We can specify a width of up to 5 digits. It requires 2 bytes for storage.
        
        1.3 MEDIUMINT:  
            It is a medium-sized integer that can be signed or unsigned. If signed, the allowable range is from -8388608 to 8388607. If unsigned, the allowable range is from 0 to 16777215. We can specify a width of up to 9 digits. It requires 3 bytes for storage.

        1.4 INT:
            It is a normal-sized integer that can be signed or unsigned. If signed, the allowable range is from -2147483648 to 2147483647. If unsigned, the allowable range is from 0 to 4294967295. We can specify a width of up to 11 digits. It requires 4 bytes for storage.

        1.5 BIGINT:  
            It is a large integer that can be signed or unsigned. If signed, the allowable range is from -9223372036854775808 to 9223372036854775807. If unsigned, the allowable range is from 0 to 18446744073709551615. We can specify a width of up to 20 digits. It requires 8 bytes for storage.
        
        1.6 FLOAT(m,d):  
            It is a floating-point number that cannot be unsigned. You can define the display length (m) and the number of decimals (d). This is not required and will default to 10,2, where 2 is the number of decimals, and 10 is the total number of digits (including decimals). Decimal precision can go to 24 places for a float type. It requires 2 bytes for storage.
        
        1.7 DOUBLE(m,d): 
            It is a double-precision floating-point number that cannot be unsigned. You can define the display length (m) and the number of decimals (d). This is not required and will default to 16,4, where 4 is the number of decimals. Decimal precision can go to 53 places for a double. Real is a synonym for double. It requires 8 bytes for storage.

        1.8 DECIMAL(m,d):    
            An unpacked floating-point number that cannot be unsigned. In unpacked decimals, each decimal corresponds to one byte. Defining the display length (m) and the number of decimals (d) is required. Numeric is a synonym for decimal.

        1.9 BIT(m):  
            It is used for storing bit values into the table column. Here, M determines the number of bit per value that has a range of 1 to 64.
        
        1.10 BOOL:   
            It is used only for the true and false condition. It considered numeric value 1 as true and 0 as false.

        1.11 BOOLEAN:    
            It is Similar to the BOOL.


    2. Date and Time Data Type:

        2.1 YEAR[(2|4)]: 
            Year value as 2 digits or 4 digits. The default is 4 digits. It takes 1 byte for storage.
       
        2.1 DATE:    
            Values range from '1000-01-01' to '9999-12-31'. Displayed as 'yyyy-mm-dd'. It takes 3 bytes for storage.
        
        2.3 TIME:    
            Values range from '-838:59:59' to '838:59:59'.  Displayed as 'HH:MM:SS'. It takes 3 bytes plus fractional seconds for storage.
        
        2.4 DATETIME:    
            Values range from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.   Displayed as 'yyyy-mm-dd hh:mm:ss'. It takes 5 bytes plus fractional seconds for storage.
        
        2.5 TIMESTAMP(m):    
            Values range from '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' TC.    Displayed as 'YYYY-MM-DD HH:MM:SS'. It takes 4 bytes plus fractional seconds for storage.

    3. String Data Types:

        3.1 CHAR(size):  
            It can have a maximum size of 255 characters. Here size is the number of characters to store. Fixed-length strings. Space padded on the right to equal size characters.
        
        3.2 VARCHAR(size):
            It can have a maximum size of 255 characters. Here size is the number of characters to store. Variable-length string.
        
        3.3 TINYTEXT(size):  
            It can have a maximum size of 255 characters. Here size is the number of characters to store.
        
        3.4 TEXT(size):  
            Maximum size of 65,535 characters. Here size is the number of characters to store.
        
        3.5 MEDIUMTEXT(size):
            It can have a maximum size of 16,777,215 characters. Here size is the number of characters to store.
        
        3.6 LONGTEXT(size):
            It can have a maximum size of 4GB or 4,294,967,295 characters. Here size is the number of characters to store.
        
        3.7 BINARY(size):
            It can have a maximum size of 255 characters. Here size is the number of binary characters to store. Fixed-length strings. Space padded on the right to equal size characters. (introduced in MySQL 4.1.2)
        
        3.8 VARBINARY(size):
            It can have a maximum size of 255 characters. Here size is the number of characters to store. Variable-length string. (introduced in MySQL 4.1.2)
        
        3.9 ENUM:
            It takes 1 or 2 bytes that depend on the number of enumeration values. An ENUM can have a maximum of 65,535 values. It is short for enumeration, which means that each column may have one of the specified possible values. It uses numeric indexes (1, 2, 3…) to represent string values.
        
        3.10 SET:
            It takes 1, 2, 3, 4, or 8 bytes that depends on the number of set members. It can store a maximum of 64 members. It can hold zero or more, or any number of string values. They must be chosen from a predefined list of values specified during table creation.

    4. Binary Large Object Data Types (BLOB):

        4.1 TINYBLOB:
            It can hold a maximum size of 255 bytes.
        
        4.2 BLOB(size):
            It can hold the maximum size of 65,535 bytes.
        
        4.3 MEDIUMBLOB:
            It can hold the maximum size of 16,777,215 bytes.
        
        4.4 LONGBLOB:
            It can hold the maximum size of 4gb or 4,294,967,295 bytes.

    5. JSON Data Type:

        MySQL provides support for native JSON data type from the version v5.7.8. This data type allows us to store and access the JSON document quickly and efficiently.

        The JSON data type has the following advantages over storing JSON-format strings in a string column:

        It provides automatic validation of JSON documents. If we stored invalid documents in JSON columns, it would produce an error.

        It provides an optimal storage format.

*/

-- [5] MySQL Variables : 
/*
    Variables are used for storing data or information during the execution of a program. It is a way of labeling data with an appropriate name that helps to understand the program more clearly by the reader.

    MySQL can use variables in three different ways, which are given below:

        1. User-Defined Variable
        2. Local Variable
        3. System Variable
*/




