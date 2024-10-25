/**
 * Holds if the given function is a public method of a class.
 */
predicate isPublicMethod(File f) {
  where f.getNumLines() > 10
  select f, "This function has more than 10 lines."

}
