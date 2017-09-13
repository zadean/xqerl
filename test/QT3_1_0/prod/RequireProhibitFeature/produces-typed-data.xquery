module namespace my = "http://www.w3.org/XQueryTest/ProducesTypedData";

declare option require-feature "typed-data-schemas";

declare function my:nine() as element()
{
  validate lax { <a xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:integer">9</a> }
};

declare function my:ten() as element()
{
  validate lax { <a xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:integer">10</a> }
};
