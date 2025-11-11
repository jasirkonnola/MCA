#include <stdio.h>
#include <ctype.h>

// Convert a set into bit vector representation
void bitVector(char set[], int bit_vector[], char U[])
{
    for (int i = 0; i < 26; i++)
        bit_vector[i] = 0;

    for (int i = 0; set[i] != '\0'; i++)
    {
        for (int j = 0; j < 26; j++)
        {
            if (set[i] == U[j])
            {
                bit_vector[j] = 1;
                break;
            }
        }
    }
}

// Print bit vector
void printBitVector(int bit_vector[])
{
    for (int i = 0; i < 26; i++)
        printf("%d", bit_vector[i]);
    printf("\n");
}

// Print actual set elements from bit vector
void printSet(int bit_vector[], char U[])
{
    printf("{ ");
    for (int i = 0; i < 26; i++)
    {
        if (bit_vector[i] == 1)
            printf("%c ", U[i]);
    }
    printf("}\n");
}

// Union
void union_operation(int set1_bit[], int set2_bit[], int result[])
{
    for (int i = 0; i < 26; i++)
        result[i] = set1_bit[i] | set2_bit[i];
}

// Intersection
void intersection(int set1_bit[], int set2_bit[], int result[])
{
    for (int i = 0; i < 26; i++)
        result[i] = set1_bit[i] & set2_bit[i];
}

// Complement
void complementOperation(int set_bit[], int result[])
{
    for (int i = 0; i < 26; i++)
        result[i] = (set_bit[i] == 0) ? 1 : 0;
}

// Difference (A - B)
void difference(int set1_bit[], int set2_bit[], int result[])
{
    int complement[26];
    complementOperation(set2_bit, complement);
    for (int i = 0; i < 26; i++)
        result[i] = set1_bit[i] & complement[i];
}

int main()
{
    char Universal_set[26] = {'a','b','c','d','e','f','g','h','i','j','k',
                              'l','m','n','o','p','q','r','s','t','u','v',
                              'w','x','y','z'};
    char set1[26], set2[26];
    int set1_bit[26], set2_bit[26], result[26];
    int set1_size, set2_size;

    // Input Set 1
    printf("Enter size of Set 1: ");
    scanf("%d", &set1_size);
    printf("Enter elements for Set 1: ");
    for (int i = 0; i < set1_size; i++)
    {
        scanf(" %c", &set1[i]);
        set1[i] = tolower(set1[i]);
    }
    set1[set1_size] = '\0';

    // Input Set 2
    printf("Enter size of Set 2: ");
    scanf("%d", &set2_size);
    printf("Enter elements for Set 2: ");
    for (int i = 0; i < set2_size; i++)
    {
        scanf(" %c", &set2[i]);
        set2[i] = tolower(set2[i]);
    }
    set2[set2_size] = '\0';

    // Bit vector conversion
    bitVector(set1, set1_bit, Universal_set);
    printf("\nBit Vector of Set 1:\n");
    printBitVector(set1_bit);
    printf("Set 1: ");
    printSet(set1_bit, Universal_set);

    bitVector(set2, set2_bit, Universal_set);
    printf("\nBit Vector of Set 2:\n");
    printBitVector(set2_bit);
    printf("Set 2: ");
    printSet(set2_bit, Universal_set);

    // Menu
    int choice = 0;
    while (choice != 5)
    {
        printf("\n--- MENU ---\n");
        printf("1. Union\n2. Intersection\n3. Complement\n4. Difference (Set1 - Set2)\n5. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);

        switch (choice)
        {
        case 1:
            union_operation(set1_bit, set2_bit, result);
            printf("\nUnion:\n");
            printBitVector(result);
            printSet(result, Universal_set);
            break;
        case 2:
            intersection(set1_bit, set2_bit, result);
            printf("\nIntersection:\n");
            printBitVector(result);
            printSet(result, Universal_set);
            break;
        case 3:
            complementOperation(set1_bit, result);
            printf("\nComplement of Set 1:\n");
            printBitVector(result);
            printSet(result, Universal_set);

            complementOperation(set2_bit, result);
            printf("\nComplement of Set 2:\n");
            printBitVector(result);
            printSet(result, Universal_set);
            break;
        case 4:
            difference(set1_bit, set2_bit, result);
            printf("\nDifference (Set1 - Set2):\n");
            printBitVector(result);
            printSet(result, Universal_set);
            break;
        case 5:
            printf("\nExiting...\n");
            break;
        default:
            printf("\nInvalid choice, try again.\n");
        }
    }

    return 0;
}
