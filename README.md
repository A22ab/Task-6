# Task-6
Table Creation:
Defined a products table containing product details such as product_id, product_name, category, price, and stock, enabling meaningful query operations and relationships.

Insert Sample Data:
Added several product entries to provide a realistic dataset for demonstrating subquery and nested query techniques in SQL.

Scalar Subquery in SELECT Clause:
Retrieved each product's price alongside the overall average price using a scalar subquery, showcasing how single-value subqueries enrich the result set with calculated statistics.

Subquery in WHERE with IN:
Selected products belonging to categories with at least one expensive item, illustrating how to filter results based on conditions from another subset of the same table using the IN operator and subquery logic.

Subquery in WHERE with EXISTS:
Listed products from categories where there is at least one item with low stock, demonstrating the use of EXISTS to check for the existence of specific related entries and control filtering.

Correlated Subquery in WHERE Clause:
Identified products whose price exceeds their category's average, employing a correlated subquery that references the outer table for context-sensitive comparisons within groups.

Subquery in FROM Clause (Derived Table):
Calculated and displayed the average price for each category by treating the result of a grouped aggregate query as a virtual table, showing how subqueries in the FROM clause create derived datasets for further analysis.

EXISTS-Based Filtering Example:
Selected products from categories containing high-priced items, reaffirming how EXISTS can be used repeatedly for advanced relational filtering in SQL queries.

