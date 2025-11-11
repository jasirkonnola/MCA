#include <stdio.h>

void sortArray(int arr[], int size) {
    int j, k, temp;
    for (j = 0; j < size; j++) {
        for (k = j + 1; k < size; k++) {
            if (arr[j] > arr[k]) {
                temp = arr[j];
                arr[j] = arr[k];
                arr[k] = temp;
            }
        }
    }
}

int main() {
    int n, m, i, j, a[100], b[100], c[200];

    printf("\nEnter 1st array limit: ");
    scanf("%d", &n);
    printf("\nEnter 1st array elements: ");
    for (i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    printf("\nFirst array: ");
    for (i = 0; i < n; i++) {
        printf(" %d ", a[i]);
    }

    sortArray(a, n);
    printf("\nSorted 1st array: ");
    for (i = 0; i < n; i++) {
        printf(" %d ", a[i]);
    }

    printf("\nEnter 2nd array limit: ");
    scanf("%d", &m);
    printf("\nEnter 2nd array elements: ");
    for (j = 0; j < m; j++) {
        scanf("%d", &b[j]);
    }

    printf("\nSecond array: ");
    for (j = 0; j < m; j++) {
        printf(" %d ", b[j]);
    }

    sortArray(b, m);
    printf("\nSorted 2nd array: ");
    for (j = 0; j < m; j++) {
        printf(" %d ", b[j]);
    }

    // Merging
    for (i = 0; i < n; i++) {
        c[i] = a[i];
    }
    for (j = 0; j < m; j++) {
        c[n + j] = b[j];
    }

    printf("\nMerged array: ");
    for (i = 0; i < n + m; i++) {
        printf(" %d ", c[i]);
    }

    // Sort merged array
    sortArray(c, n + m);
    printf("\nSorted merged array: ");
    for (i = 0; i < n + m; i++) {
        printf(" %d ", c[i]);
    }

    return 0;
}
