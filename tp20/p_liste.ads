with p_esiut; use p_esiut;
package p_liste is
   -- Paquetage de gestion de listes de mots qui ont un m�me squelette.
   -- Chaque liste est tri�e par ordre alphab�tique des mots.
   -- Tous les mots saisis doivent �tre en minuscule sinon les 
   -- transformer par la fonction minuscule.   
   --************************************************************************
   --   Types
   --------------------------------------------------------------------------   
   type TR_Mot is record 
      ch      : String (1 .. 20);  
      long    : Natural;  
   end record; 
   
   type TR_Cellmot; 
   type TA_Mot is access TR_Cellmot; 
   type TR_Cellmot is record 
      Mot     : TR_Mot;  
      Suivant : TA_Mot;  
   end record; 
   --************************************************************************
   function Minuscule (C : in Character ) return Character; 
   -- {} => {si C est une minuscule, r�sultat = C, sinon r�sultat = 
   --        lettre minuscule correspondante}
   -- Ecart entre minuscule et majuscule :
   -- Character'Pos ('a') - Character'Pos ('A');
   --------------------------------------------------------------------------
   procedure Saisiemot (Mot : out TR_Mot ); 
   -- spec{}=>  {saisit un mot au clavier et l'affecte � Mot en le 
   --            transformant en minuscule} 
   -- utiliser lire_tranche pour avoir la longueur du mot
   --------------------------------------------------------------------------
   function Cherchemot (ListMots : in TA_Mot; Mot: in TR_Mot) return Boolean; 
   -- {ListMots tri�e}=> {r�sultat = vrai si  mot dans la liste   
   --                     triee de mots listMots, faux sinon}
   --------------------------------------------------------------------------
   procedure AjoutMot (ListMots : in out TA_Mot; Mot : in TR_Mot; Ajout : out boolean); 
   --spec {ListMots tri�e}=> {ajoute Mot dans la liste triee ListMots s'il n'y est pas
   --                         et ajout = vrai; ne fait rien sinon et ajout = faux}    
   --------------------------------------------------------------------------
   procedure AffichlistMots (ListMots : in TA_Mot ); 
   --spec {ListMots tri�e}=> {affiche � l'�cran la liste des mots de ListMots}
   --------------------------------------------------------------------------
end p_liste;
