# Housie (Tambola) Ticket Generator - Ruby

This Ruby program generates a valid **Housie** Ticket.

---

## Housie Ticket Rules

Each row contains exactly 5 numbers (and hence 4 blanks)  
| Row | Numbers | Empty Spaces | Total Cells |  
|-----------|---------|--------------|-------------|  
| R1        | 5       | 4            | 9           |  
| R2        | 5       | 4            | 9           |  
| R3        | 5       | 4            | 9           |  
|-----------|---------|--------------|-------------|  
| **Total** | **15**  | **12**       | **27**      |

---

Each column has a specific range:  
- Column 1: 1–9  
- Column 2: 10–19  
- Column 3: 20–29  
- Column 4: 30–39  
- Column 5: 40–49  
- Column 6: 50–59  
- Column 7: 60–69  
- Column 8: 70–79  
- Column 9: 80–89  

---

## Housie Ticket Example

|  5  |     | 21  | 30  |     | 51  |     |     | 80  |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|  6  |     | 26  | 33  |     |     |     | 70  | 82  |
|     | 11  | 28  | 38  |     | 52  |     |     | 85  |


---

## How to Use

### Requirements

- Ruby 2.6 or higher

### Run the Script

```bash
ruby housie_ticket_generator.rb
