---

# Linux

#### Itinerary


1.  [Right sed Fred]()
1.  [This is AWKward]()

---

1.  [Right sed Fred]()
<br>
    - alias sed='sed -E'
    - sed 's:.*/::'
    - sed 's///g'
    - sed -i 's///'
    - sed -i 'y///'
    - sed -i.bak 's///'
    - sed '/pattern/w filename' input
    - sed -e 's///' -e 's///' input
    - sed -e 's///' -e 's///' input1 input2
    - sed 's/pat/{&}/'
    - sed 's/pat/rep/p' input
    - sed -n 's/pat/rep/p' input
    - sed -n p input
    - sed -n 1p input
    - sed -n '$p' input
    - sed -n '3,$p' input
    - sed -n '4,12 p' input
    - sed -n '/^A/p' input
    - sed -n '/pat1/,/pat2/p' input
    - sed -n '1,/pat1/p' input
    - sed 2q input

---

2.  [This is AWKward]()
<br>
    - awk 'condition { action }' input files
    - command | awk 'condition { action }'
    - awk -f program.awk input files
    - ./program.awk (with proper shebang)

---

3.  [Forms of conditions]()
<br>
    - awk 'expression { action }'
        - NF < 5
        - NR > 45
        - NR == 1, NR == 10 (head)
        - $1 == "Hello"
        - $2 ~ /^d/
        - $2 !~ /^d/
        - $3 * $4 > 5
<br>
    - awk '/regular expression/  { action }'
    - awk '/pattern1/,/pattern2/ { action }'

https://www.gnu.org/software/gawk/manual/gawk.html

---
