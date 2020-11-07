rule convert_to_uppercase:
    input:
        "{some_name}.txt"
    output:
        "{some_name}.upper.txt"
    shell:
        """
        tr [a-z] [A-Z] < {input} > {output}
        """
rule concatenate_files:
    input:
        "{first}.upper.txt",
        "{second}.upper.txt"
    output:
        "{first}_{second}.txt"
    shell:
        """
        echo 'Concatenating some {input}' | cat - {input[0]} {input[1]} > {output}
        """
