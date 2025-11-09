int main() {
    int a = 5;
    float b = 2.5;
    char c = 'x';
    bool flag = true;

    if (a == 5) {
        b = b + 1;
        a++;
    } else {
        a = a - 1;
    }

    for (int i = 0; i < 10; i++) {
        printf("%d\n", i);
    }

    return 0;
}

