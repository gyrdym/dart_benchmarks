# Dart benchmarks

This library contains some code snippets and their benchmarks. You may use the lib as a guide for writing efficient code
for Dart Virtual Machine. Some of these benchmarks may be quite obvious, but, someone may find it useful. 

### Key insights:

#### Iterable benchmarks

For all the iterables a collection of 10000 double elements has been used as a source

- **List#indexOf** - It took the same time to find the index of a value for both growable and fixed version of `List`
- **Set#contains** - It took much less time to find if the value exists than `indexOf` of `List`. But, conversion to
`Set` takes much time, so there is no use to convert your list to a set just to make a single check  