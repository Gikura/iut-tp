with P_Liste; use P_Liste;
package p_arbre is

   procedure Insermot (MOT : in TR_Mot ; Nouveau : out boolean);
   -- {} => {si MOT n'�tait pas pr�sent dans le dictionnaire, il a �t� ins�r�
   --       dans la liste des mots de m�me squelette, Nouveau = vrai,
   --       sinon Nouveau = faux}

   procedure AffichDico;
   -- {} => {la liste des mots du dictionnaire a �t� affich�e selon 
   --        le format : 
   --        squelettemot 
   --	            mot mot mot mot mot(maxi 5 par ligne)
   --	            mot mot
   --        squelettemot ... etc. 
  
   procedure Listmots (MOT : in TR_Mot); 
   -- {} => {La liste des mots de m�me squelette que MOT est affich�e}
   --        Utile pour proposer une alternative au mot saisi dans le cas
   --        o� le squelette de ce mot est pr�sent dans l'arbre

   function Verifmot (MOT : in TR_Mot) return Boolean;
   -- {} => {r�sultat = vrai si le mot est dans le dictionnaire, faux sinon}
   
   procedure Charge;
   -- {} => {le fichier fdico.dat est charg� en memoire sous forme d'arbre} 

   procedure Sauve;
   -- {} => {l'ensemble des mots de l'arbre est copi� dans le fichier fdico.dat 
   --        suite � l'insertion de nouveaux mots dans l'arbre 
end p_arbre;