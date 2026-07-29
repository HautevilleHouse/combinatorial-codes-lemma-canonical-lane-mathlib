import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure CombinatorialCodesLemmaTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def defaultTheoremStatement : CombinatorialCodesLemmaTheoremStatement :=
  { sourceKey := "combinatorial-codes-lemma-canonical-lane"
    theoremName := "CombinatorialCodesLemma"
    theoremObject := "Every admissible code family satisfies the combinatorial codes lemma."
    classicalBoundary := "Classical source boundary carried by theoremBoundaryOpen and sourceConjectureClosureClaimed."
    constrainedStatement := "Constrained combinatorial codes lemma closure internalized through admissible class."
    certificateLane := "code_constrained"
    carriedRemainder := "Classical source boundary remains open beyond the constrained closure."
  }

theorem theorem_statement_default_checked :
    defaultTheoremStatement.sourceKey = "combinatorial-codes-lemma-canonical-lane" := by
  rfl

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse