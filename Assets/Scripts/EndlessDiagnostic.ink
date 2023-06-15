// EXPRESSIONS CREES: 
//      NEUTRAL
//      SAD
//      ANGRY
//      CONFUSE
//      TIRED
//      SURPRISED
//      INTRIGUED
//      RELIVED
//      HURT

// NOMS DES PERSONNAGES : 
//      Emilia
//      Infirmier
//      Généraliste
//      Urologue
//      Gynécologue
//      Infirmière       (Radiologie) 

//      Épilogue




//Definition des variables externes
EXTERNAL Name(charName)
EXTERNAL CharacterIcon(charNames)
EXTERNAL CharAnimation(charName, amimName)
EXTERNAL Heart(heartNumber)
EXTERNAL Age(ageText)


//PRESENTATION

-> Presentation

=== Presentation ===
{Heart(5)}
{Age(16)}
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}

Appuyer sur la barre d'espace pour lancer l'histoire Temps de lecture : 20 minutes #Heart:1 


Texte de présentation

    * [Ecouter son histoire]

-> ReveilACauseDesDouleurs


//DEBUT DES DOULEURS

=== ReveilACauseDesDouleurs ===
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "SAD")}
Vous vous réveillez en pleine nuit avec des douleurs indéfinissables au niveau du bas ventre. Vous avez la sensation d'avoir un poignard qui vous transperce.
Du mieux que vous pouvez, vous vous rendez dans la salle de bain pour chercher de l'eau. 
Abasourdie par la douleur, vous renversez tout sur votre passage et vous réveillez vos parents. D'ici que quelqu'un arrive, vous vous êtes effondré sur le sol. 
La décision est prise, vos parents décident de vous emmener au plus vite aux urgences les plus proches. 
    * [Rendez-vous aux urgences]
        ->Urgences


=== Urgences ===
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
Vous attendez plusieurs heures aux urgences, d'autres patients se présentant pour des urgences vitales. 
Au fil des heures d'attentes, la douleur s'amenuise et vous restez simplement assommée par ce qui vient de se passer. 
Un infirmier vous appelle en salle d'auscultation. 
{Name("Infirmier")}
{CharacterIcon("Infirmier")}
{CharAnimation("Casual1", "TIRED")}
//RAJOUTER ITALIQUE POUR DIALOGUE EXTERNE 
<i>Où est-ce que vous avez mal ? Au bas ventre ? C'est sûrement une simple infection urinaire, il ne faut pas venir aux urgences pour ça Madame !</i>
{Name("Emilia")}
{CharacterIcon("Emilia")} 
{CharAnimation("Casual1", "SURPRISED")}
Malgré votre surprise face à l'attitude de l'infirmer, vous expliquez que vous avez perdu connaissance suite à des douleurs terribles qui vous ont réveillé aux urgences. Désemparée par la situation, vous vous êtes inquiétée et vous êtes rendu aux urgences. 
{Name("Infirmier")}
{CharacterIcon("Infirmier")}
<i>Mais vous n'avez plus mal maintenant, c'est que c'est bon, vous n'avez rien. Laissez-moi vérifier vos analyses.</i>
{CharAnimation("Casual1", "ANGRY")}
<i>Ah vous voyez, une simple infection urinaire, il ne faut pas venir aux urgences pour ça. Rendez-vous chez votre médecin généraliste pour obtenir une ordonnance. Au revoir et ne refaites plus ça.</i>
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
    * [Vous allez voir votre médecin généraliste]
        ->MedecinGeneraliste



=== MedecinGeneraliste ===
{Name("Généraliste")}
{CharacterIcon("Generaliste")}
{CharAnimation("Casual1", "NEUTRAL")}
<i>Je ne comprends pas ce qui a pu provoquer tout cela. Est-ce que vous avez des douleurs similaires à d'autres moments ?</i>
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Vous expliquer que vous avez des douleurs similaires quand vous avez vos règles, mais que des crises similaires peuvent se déclencher à tout moment, même au milieu de la nuit, sans rapport avec vos menstruations. 
{Name("Généraliste")}
{CharacterIcon("Generaliste")}
{CharAnimation("Casual1", "ANGRY")}
<i>Ah bon, ça n'a pas l'air lié alors. Vous savez c'est normal d'avoir mal durant vos règles.</i>
{CharAnimation("Casual1", "TIRED")}
<i>Vu vos symptômes situés vers le bas ventre, je vous propose de soit vous rendre chez votre Gynécologue habituel ou je peux vous faire une délégation pour un Médecin Urologue. </i>
    * {not MedecinGynecologue} [Le médecin Gynécologue]
        -> MedecinGynecologue
    * {not MedecinUrologue} [Le médecin Urologue]
        ->MedecinUrologue


=== MedecinGynecologue ===
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Vous êtes reçue par votre Gynécologue. 
{Name("Gynécologue")}
{CharacterIcon("Gynecologue")}
{CharAnimation("Casual1", "TIRED")}
<i>Je ne suis pas sûre de ce que vous avez. Vous savez, les règles sont très souvent douloureuses chez mes patientes. Peut-être que vous devriez tout de même aller voir l'Urologue comme conseillé par votre médecin.</i>
{Name("Gynécologue")}
{CharacterIcon("Gynecologue")}
{CharAnimation("Casual1", "INTRIGUED")}
<i>Je vais quand même vous faire des tests pour l'endométriose. Comme il s'agit d'une maladie où du tissu utérin se développe à différents endroits dans le corps, cela pourrait expliquer vos règles douloureuses, mais pas les "crises" que vous décrivez. Je vous propose de faire une échographie.</i>
{Name("Gynécologue")}
{CharacterIcon("Gynecologue")}
{CharAnimation("Casual1", "INTRIGUED")}
<i>Bon je ne vois strictement rien à l'imagerie. Cela n'exclut pas une endométriose, mais comme je ne vois pas d'inflammation ou de lésions, je ne vois pas de raison de vous prescrire une IRM qui permettrait de voir plus en profondeur. Vous savez, souffrir durant vos règles est normal.</i>
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "CONFUSE")}
Êtes-vous satisfait du diagnostic qui vous a été donné ? 
    * [Oui]
            {Name("Epilogue")}
            {CharacterIcon("Epilogue")}
            {CharAnimation("Casual1", "SAD")}
        Vous acceptez que vous ne connaîtrez sûrement jamais pas la raison de vos douleurs.
        Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est extrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
        Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
            -> END
    * [Non, mais vous ne savez pas quoi faire]
        ->ChoixRestantsGyn


= ChoixRestantsGyn
Vous pouvez toujours : 
    * {not MedecinUrologue} [Aller voir le médecin Urologue]
        ->MedecinUrologue
    * [Faire des recherches par vous-même sur l'endométriose]
        ->RechercheEndometriose


=== MedecinUrologue ===

{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Vous êtes reçue par le médecin Urologue. 
{Name("Médecin Gynécologue")}
{CharacterIcon("MedecinGynecologue")}
{CharAnimation("Casual1", "TIRED")}
<i>Je ne suis pas sûre de ce que vous avez.</i>
{CharAnimation("Casual1", "ANGRY")}
<i>Vous savez, les règles sont très souvent douloureuses chez mes patientes. Peut-être que vous devriez tout de même aller voir votre Gynécologue comme conseillé par votre médecin.</i>
{CharAnimation("Casual1", "NEUTRAL")}
<i>Je peux tout de même vous faire une échographie.</i>
<i>Bon je ne vois strictement rien à l'échographie. Vous devriez en reparler avec votre Gynécologue, mais si vos douleurs apparaissent en dehors de vos règles, il n'y a aucune raison que ce soit lié à cela.</i>
{CharAnimation("Casual1", "ANGRY")}
<i>Personnellement je pense que vos douleurs sont psychosomatiques. Cela veut dire qu'elles sont créées par votre cerveau. Vous devriez vous déstresser et accepter que vos règles soient douloureuses.</i>
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
Êtes-vous satisfait de ce diagnostic ? 
    * Oui
            {Name("Epilogue")}
            {CharacterIcon("Epilogue")}
            {CharAnimation("Casual1", "SAD")}
        Vous acceptez que vous ne connaîtrez sûrement jamais pas la raison de vos douleurs.
        Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est extrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
        Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
            -> END
    * {not MedecinGynecologue2} [Non, mais vous ne savez pas quoi faire]
        ->ChoixRestantsUro
    * {MedecinGynecologue2} [Définitivement non, mais maintenant vous pouvez retourner chez le gynécologue pour la prescription d'une IRM] 
        ->MedecinGynecologue2

= ChoixRestantsUro
Vous pouvez toujours : 
    * {not MedecinGynecologue} [Aller voir le gynécologue]
        ->MedecinGynecologue
    * [Faire des recherches par vous-même]
        ->RechercheUrologue




//RECHERCHES MEDECINS



=== RechercheGeneraliste ===
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
En cherchant vos symptômes, vous ne trouvez aucune correspondance qui semble expliquer ce que vous avez vécu. 
    * {not MedecinGynecologue} [Aller voir le gynécologue]
        ->MedecinGynecologue
    * {not MedecinUrologue} [Aller voir l'Urologue]
        ->MedecinUrologue
    * Non, vous laissez tomber.
            {Name("Epilogue")}
            {CharacterIcon("Epilogue")}
            {CharAnimation("Casual1", "SAD")}
        Vous acceptez que vous ne connaîtrez sûrement jamais pas la raison de vos douleurs.
        Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est exåtrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
        Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
            -> END



=== RechercheGynecologue
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
En cherchant vos symptômes, vous ne trouvez aucune correspondance qui semble expliquer ce que vous avez vécu. 
    * {not MedecinUrologue} [Aller voir l'Urologue]
        -> MedecinUrologue
    * Poursuivre la recherche en ligne sur l'endométriose en général. 
        -> RechercheEndometriose
    * Vous laisser tomber vos recherches.
            {Name("Epilogue")}
            {CharacterIcon("Epilogue")}
            {CharAnimation("Casual1", "SAD")}
        Vous acceptez que vous ne connaîtrez sûrement jamais pas la raison de vos douleurs.
        Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est extrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
        Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
            -> END



=== RechercheUrologue
{Name("Emilia")}
{CharacterIcon("Emilia")}
{CharAnimation("Casual1", "TIRED")}
En cherchant vos symptômes, vous ne trouvez aucune correspondance qui semble expliquer ce que vous avez vécu. 
    * {not MedecinGynecologue} [Aller voir le Gynécologue]
        ->MedecinGynecologue
    *  Vous laissez tomber vos recherches.
            {Name("Epilogue")}
            {CharacterIcon("Epilogue")}
            {CharAnimation("Casual1", "SAD")}
        Vous acceptez que vous ne connaîtrez sûrement jamais pas la raison de vos douleurs.
        Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est extrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
        Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
            -> END




//RECHERCHES PLUS LARGE 




=== RechercheEndometriose ===

En cherchant "Endométriose" sur un moteur de recherche en ligne, vous tombez sur les résultats suivants : 
* {not Vulgarisation} [Endométriose : Ma thèse en 180 secondes]
    ->Vulgarisation
* {not ArticleDeJournal} [Les femmes touchées par l’endométriose sont ciblées par les groupes sectaires]
    ->ArticleDeJournal
* {not ArticledeBlog} [LUNA vous explique : Les idées reçues de l'endométriose]
    ->ArticledeBlog
* {not SiteAssociation} [Les maux des femmes sont sous-estimés par les médecins]
    ->SiteAssociation


=== Vulgarisation ===
Vous trouvez une vidéo Youtube de "Ma thèse en 180 secondes" de Oumeima El Mansouri sur l'endométriose. 
Dès les premières secondes, vous vous reconnaissez dans les douleurs décrites et vous tiquez lorsqu'elle parle de "douleurs qui s'apparentent à des coups de couteau. C'est ce que vous avez décrit dès votre première viste aux Urguences. 
Elle y décrit une patiente qui a mis plus de vingt ans – et un utérus retiré chirurgicalement en moins – à découvrir qu'elle souffrait d'endométriose. 
"L'endométriose c'est lorsque le tissu endométrial, qui saigne durant les règles, émigre et se colle à d'autres organes, en continuant de saigner. Je vous laisse imaginer la douleur." 
"L'endométriose c'est l'histoire de 300 millions de femmes, plus de 4 fois la population française, et malgré cela c'est une maladie taboue et ignorée parce qu’avoir mal durant ses “ragnagna”, c'est normal." 
Oumeima El Mansouri explique ensuite que l'endométriose se découvre par l'imagerie médicale, à la fois l'IRM et l'échographie qui, même si elles permettent de "voir dans nos corps", ne laissent pas tout voir et doivent être complétées l'une et l'autre. 
Vous comprenez donc que l'endométriose ne peut être diagnostiquée avec une "simple" imagerie, qui donne des images très détaillées – tellement qu'elles peuvent cacher les lésions de l'endométriose qui peuvent se retrouver partout dans le corps. 
Dans les commentaires sous la vidéo, un lien vers un article de presse a été posté. 
    *{not ArticleDeJournal} [Les femmes touchées par l’endométriose sont ciblées par les groupes sectaires. ]
        ->ArticleDeJournal
    *{ArticleDeJournal && ArticledeBlog && SiteAssociation} [Vous êtes suffisamment au courant pour vous rendre à nouveau chez votre Gynécologue pour demander la prescription d'une IRM. ]
        ->MedecinGynecologue2
    * {not (ArticleDeJournal && ArticledeBlog && SiteAssociation)} [Retourner aux résultats de recherches. ]
        ->RechercheEndometriose


=== ArticleDeJournal ===
"Les femmes touchées par l’endométriose sont ciblées par les groupes sectaires", c'est le titre d'un article posté en ligne par LaNouvelleRépublique.fr le 24 novembre 2022. 
"Les femmes souffrant d’endométriose sont aujourd’hui doublement ciblées par les groupes sectaires dit la mission interministérielle de vigilance et de lutte contre les dérives sectaires (Miviludes) dans son dernier rapport."
"« Médicalement, d’abord, par des charlatans qui exploitent leur détresse avec des remèdes “ miraculeux ”, et surtout très onéreux. Spirituellement, ensuite, par le “ féminin sacré ” et son dévoiement du féminisme à des fins mercantiles » détaille-t-elle." 
"Elle met en garde sur les mécanismes de culpabilisation utilisés par certaines gourous ou organisations. Des affirmations – « si une femme a des règles douloureuses, c’est qu’elle n’est pas ” en accord avec sa nature profonde de femme ” » – sont aussi fréquemment utilisées pour attirer des personnes en détresse ou en souffrance."
"De nombreuses patientes font par ailleurs état d'une forme de mépris au cours de leur diagnostic par le personnel médical : "Les maux des femmes sont sous-estimés par les médecins". 
    *{not SiteAssociation} [Cliquer sur le lien "Les maux des femmes..."] ->SiteAssociation
    *{Vulgarisation && ArticledeBlog && SiteAssociation} [Vous êtes suffisamment au courant pour vous rendre à nouveau chez votre Gynécologue pour demander la prescription d'une IRM. ]
        ->MedecinGynecologue2
    * {not (Vulgarisation && ArticledeBlog && SiteAssociation)} [Retourner aux résultats de recherches. ]
        ->RechercheEndometriose


=== ArticledeBlog ===
"LUNA vous explique : Les idées reçues de l'endométriose"
"Aujourd’hui il n’existe pas de traitement définitif permettant de “guérir” de l’endométriose. Il existe différentes stratégies thérapeutiques, comme l’hormonothérapie, la chirurgie, et/ou de médecines complémentaires selon les besoins et souhaits de chaque patiente, qui permettront de limiter l’évolution de la maladie et l’impact sur la qualité de vie." 
"S’il est vrai que certaines femmes rencontrent parfois moins de douleurs lors de la grossesse, et/ou qu’après leur accouchement, la grossesse n’est pas, et ne doit pas être considérée comme une solution thérapeutique."
"Il n’est pas systématique de ressentir moins de douleurs d’endométriose lorsque l’on est enceinte premièrement, cela dépend de chaque femme. Il ne s’agit pas d’un traitement. Par ailleurs, la plupart des femmes ayant vu un soulagement de la douleur, et/ou une limitation de l’évolution de la maladie durant cette période, ressentent de nouveau les douleurs et répercussions provoquées par l’endométriose quelques mois après leur grossesse." 


    *{Vulgarisation && ArticleDeJournal  &&  SiteAssociation} [Vous êtes suffisamment au courant pour vous rendre à nouveau chez votre Gynécologue pour demander la prescription d'une IRM. ]
        ->MedecinGynecologue2
    * {not (Vulgarisation && ArticleDeJournal  &&  SiteAssociation)} [Retourner aux résultats de recherches. ]
        ->RechercheEndometriose


=== SiteAssociation ===
"Les maux des femmes sont sous-estimés par les médecins"
"Les femmes sont toujours considérées comme des affabulatrices par de nombreux praticiens spécialisés dans leur santé. En résulte une mauvaise prise en charge médicale. Témoignages"
"«On attend d’un médecin qu’il écoute, rassure, explique et s’efforce de guérir parfois. Soulager, souvent. Consoler, toujours», écrit le médecin Martin Winckler , auteur du livre Les Brutes en blanc (éd. Flammarion)." 
"En cause souvent, le fait que celles-ci soient suspectées d’affabuler, d’exagérer, d’être émotives, irrationnelles, ignorantes, ou hystériques. Des préjugés qui, sans surprise, nuisent à une bonne prise en charge médicale."
    *{Vulgarisation && ArticleDeJournal && ArticledeBlog} [Vous êtes suffisamment renseigné pour exiger la prescription d'une IRM. ]
        ->MedecinGynecologue2
    * {not (Vulgarisation && ArticleDeJournal && ArticledeBlog) }[Retourner aux résultats de recherches. ]
        ->RechercheEndometriose




//Retour chez les médecins




=== MedecinGynecologue2 ===
Vous vous rendez chez votre gynécologue, bien décidée cette fois d'exiger une IRM pour avoir le coeur net sur la possibilité d'avoir de l'endométriose. 
    *{not MedecinUrologue} [Médecin : Vous devez d'abord voir l'urologue pour être sûre !]
        ->MedecinUrologue
{MedecinUrologue} Tres bien. Je vous donne une ordonnance pour un IRM. 
    *{MedecinUrologue} [Rendez-vous au centre d'imagerie médicale. ]
        -> CentredeRadiologie


=== CentredeRadiologie ===
Votre IRM démontre des lésions dues à l'endométriose. 
Si la lecture de cette fiction interactive ne vous a pris que quelques minutes, la réalité du parcours de diagnostic racontée dans cette histoire est de 12 ans. 
Il est estimé qu'environ 10% de la population féminine mondiale est touchée par l'endométriose, une maladie chronique pouvant présenter des symptômes gravement handicapants. Ce chiffre est considéré comme sous-estimé puisque le parcours de diagnostic de l'endométriose est extrêmement complexe et est estimé en moyenne à 5 à 7 ans, voire 10 ans. 
Cela s'explique notamment par un manque de connaissance du personnel soignant dans son ensemble. De nombreux témoignages de patientes diagnostiquées font état d'une forme de mépris de la part de ces derniers qui, bien souvent, considère tout simplement que des menstruations douloureuses sont une normalité, peu importe le niveau de douleur et de handicap engendrés.
-> END