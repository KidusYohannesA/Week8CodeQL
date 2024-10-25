/**
 * Holds if the given function is a public method of a class.
 */
predicate isPublicMethod(Function f) {
  exists(MethodDefinition md | md.isPublic() and md.getBody() = f)
}
from Function f
where isPublicMethod(f) and
f.getNumLines() > 10
select f, "This function has more than 10 lines."

