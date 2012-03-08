with unchecked_deallocation;

package ARBRE is

type t_operation is (addition, soustraction, multiplication, division);

type noeud;
type p_noeud is access noeud;

type noeud (feuille : boolean) is record       -- noeud d'un arbre binaire repr�sentant une expression
  gauche, droit : p_noeud;		       -- gauche et droit pointent vers ses 2 fils
  case feuille is			       -- feuille indique si le noeud est une feuille ou non
    when true  => operande	: integer;     -- si le noeud est une feuille il a un champ op�rande
    when false => operateur	: t_operation; -- sinon il a un champ op�rateur
  end case;
end record;

fin : exception; -- exception lev�e pour terminer

-------------------------------------------------------------------------
function LIRE_EXPRESSION return p_noeud;
-------------------------------------------------------------------------
-- Lit au clavier une expression arithm�tique, 
--   r�sultat = arbre correspondant
-- Si l'expression est incorrecte, r�sultat = null, 
--   un message d'erreur est affich� � l'�cran
-- Si l'expression lue est la cha�ne "q", 
--   une exception fin est lev�e

-------------------------------------------------------------------------
procedure LAISSER_NOEUD is new unchecked_deallocation (noeud, p_noeud);
-------------------------------------------------------------------------
-- si p est un pointeur de type p_noeud qui pointe sur une cellule, 
-- LAISSER_NOEUD(p) lib�re la m�moire occup�e par cette cellule et p prend pour valeur null

end ARBRE;
