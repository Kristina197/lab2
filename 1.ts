const S = prompt();

if (S) {
    let compressed = '';
    let count = 1;

    for (let i = 1; i < S.length; i++) {
        if (S[i] === S[i - 1]) {
            count++;
        } else {
            compressed += S[i - 1] + count;
            count = 1;
        }
    }

    compressed += S[S.length - 1] + count;

    alert(compressed.length < S.length ? compressed : S);
} else {
    alert("Вы не ввели строку!");
}
