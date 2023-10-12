# Ejercicios sobre expresiones regulares

## Palabras que empiezan por vocal

```bash
grep -E '^[aeiou]' -i /usr/share/dict/words
```

## Palabras que tienen exactamente cinco letras

```bash
grep -E '^\w{5}$' /usr/share/dict/words
```

## Palabras que tienen menos de cinco letras

```bash
grep -E '^\w{,4}$' /usr/share/dict/words
```

## Palabras que empiezan por vocal y terminan en `tion`

```bash
grep -E '^[aeiou].*tion$' -i /usr/share/dict/words
```

## Palabras que empiezan por vocal, terminan en `tion` y tienen hasta ocho letras

```bash
grep -E '^[aeiou].{,5}tion$' -i /usr/share/dict/words
```

## Palabras que no contienen vocales

```bash
grep -E '^[^aeiou]*$' -i /usr/share/dict/words
```

## Palabras en las que `sh` aparece al menos dos veces

```bash
grep -E 'sh\w*sh' /usr/share/dict/words
```
