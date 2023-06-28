
//Definition des variables externes
EXTERNAL Name(charName)
EXTERNAL CharAnimation(charName, amimName)
EXTERNAL Heart(heartNumber)
EXTERNAL Age(ageText)

->Debut
=== Debut ==
{Heart(5)}
{Age(15)}

{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
<i>Press the space bar to start the story</i>
    *[Reading time : 20 minutes]
    -> Presentation
 

//PRESENTATION

=== Presentation ===
{Heart(5)}
{Age(15)}

You play the role of a young girl, Emilia, whom you follow on her long journey to diagnose her widespread condition, endometriosis.  
Emilia will guide you through the various difficulties she has had to face in the medical world, dealing with symptoms that are often overlooked because of their association with "women's problems".  
She will also tell you how she had to step outside the medical environment to educate herself about these symptoms, in order to be able to discuss with medical professionals and the impact this had on her mental health. 
    *[Discover her story]
    -> ReveilACauseDesDouleurs


//DEBUT DES DOULEURS

=== ReveilACauseDesDouleurs ===
{Heart(5)}
{Age(15)}

{Name("Emilia")}
{CharAnimation("Casual1", "SAD")}
You wake up in the middle of the night with indefinable pains in your lower abdomen. You feel like you're being stabbed. You've never felt pain like this before.
As best you can, you go into the bathroom to fetch some fresh water. 
Stunned by the pain, you knock everything over in your path and wake your parents. By the time anyone arrives, you've passed out on the floor. 
{Heart(4)}
In view of the situation, your parents are worried and decide to rush you to the nearest emergency room.
    * [The emergency room]
        ->Urgences


=== Urgences ===
{Heart(4)}
{Age(15)}

{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You're waiting for several hours at the facility, with other patients coming in for emergency treatment.
As the waiting goes on, the pain diminishes and you are left stunned by what has just happened. 
After waiting for four hours, a nurse finally calls you into the examination room.
{Name("Nurse")}
{CharAnimation("Casual1", "TIRED")}
{Heart(3)}
<i>Where does it hurt? In your lower abdomen? It's probably just a urinary infection or a lady's pain, but that's no reason to go to the emergency room!</i>
{Name("Emilia")}
{CharAnimation("Casual1", "SURPRISED")}
Despite your surprise at the nurse's attitude, you explained that you had lost consciousness as a result of terrible pain that you had never experienced before. Distraught by the situation, like your parents, you headed for the emergency room.
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
The nurse presses on your lower back to check your kidneys and asks if it hurts.
{Name("Nurse")}
{CharAnimation("Casual1", "ANGRY")}
<i>No ? Well, it's nothing serious then, it was just aches and pains, there's no need to make such a drama. It's going to happen every month, you know? The world won't stop spinning.Let me check your tests. </i>
{CharAnimation("Casual1", "ANGRY")}
{Heart(2)}
<i>Ah, you see, there's nothing wrong with you, you shouldn't go to the emergency room for period pain. If anything, go to your general practitioner and get a prescription for painkillers. Go home and don't do this again.</i>
    * [Visit your general practitioner]
        ->MedecinGeneraliste



=== MedecinGeneraliste ===
{Age(15)}
{Heart(3)}

{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You tell your general practitioner about the pain you have been experiencing that led you to go to the emergency room a few weeks earlier. 
{Name("Generalist")}
{CharAnimation("Casual1", "TIRED")}
<i>I don't know what could have caused all this. Do you have similar pain at other times?</i>
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You explain that you have similar pains when you have your period, but that you can have similar pains at any time, even in the middle of the night, with no connection to your cycle. 
{Name("Generalist")}
{CharAnimation("Casual1", "TIRED")}
<i>Well, it doesn't seem to be connected. I can't help you more than that. I can give you some mild painkillers until you see a colleague.</i>
{CharAnimation("Casual1", "SAD")}
{Heart(2)}
<i>In light of your symptoms in the lower stomach, I suggest that you make a referral to a urologist as well as a gynaecologist. You should be able to have appointments within the year.</i>
    * [The gynaecologist] // Gyneco_1
        -> MedecinGynecologue_1
    * [The Urologist] // Urologue_1
        ->MedecinUrologue_1


=== MedecinGynecologue_1 ===
{Heart(3)}
{Age(16)}

{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
You are received by the gynaecologist and explain what brought you to the emergency room a few months ago.
{Name("Gynaecologist")}
{CharAnimation("Casual1", "ANGRY")}
<i>I'm not sure what you're going through. You know, menstruation is very often painful for my patients. Perhaps you should still go and see the urologist, as your doctor has advised. I am still going to do some tests on you. </i>
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You must go to the gynaecological examination chair. The doctor performs a quite invasive examination without warning you or obtaining your consent before proceeding.
{Name("Gynaecologist")}
{CharAnimation("Casual1", "INTRIGUED")}
<i>I'm still going to test you for endometriosis. As this is a disease where uterine tissue develops in various places in the body, it could explain your painful periods, but not the " episodes " you describe outside your period.</i>
<i>I suggest you have an ultrasound check. If you have endometriosis, it will show.</i>
{Name("Gynaecologist")}
{CharAnimation("Casual1", "SAD")}
<i>Well, I can't see anything on ultrasound. That doesn't rule out endometriosis entirely, but it's very unlikely.</i> 
<i>As I don't see any inflammation or lesions, I don't see any reason to prescribe an MRI scan, which could provide a more in-depth view. You know, suffering during your period is normal, and this could explain your pain.</i>
{Name("Emilia")}
{CharAnimation("Casual1", "CONFUSE")}
{Heart(2)}
You can always make the following choices :
    *{not MedecinUrologue_1}[Going to the urologist]
    ->MedecinUrologue_2
    *[Doing internet research]
    ->RechercheGeneraliste


=== MedecinGynecologue_2 ===
{Heart(2)}
{Age(17)}

{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You are received by the gynaecologist and explain what brought you to the emergency room almost two years ago.
{Name("Gynaecologist")}
{CharAnimation("Casual1", "ANGRY")}
<i>I'm not sure what you're going through. You know, menstruation is very often painful for my patients. Maybe the urologist was right and it's just psychosomatic and your anxiety is causing the symptoms.  I am still going to do some tests on you. </i>
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You must go to the gynaecological examination chair. The doctor performs a quite invasive examination without warning you or obtaining your consent before proceeding.
{Name("Gynaecologist")}
{CharAnimation("Casual1", "INTRIGUED")}
<i>I'm still going to test you for endometriosis. As this is a disease where uterine tissue develops in various places in the body, it could explain your painful periods, but not the " episodes " you describe outside your period.</i>
<i>I suggest you have an ultrasound check. If you have endometriosis, it will show.</i>
{Name("Gynaecologist")}
{CharAnimation("Casual1", "SAD")}
<i>Well, I can't see anything on ultrasound. That doesn't rule out endometriosis entirely, but it's very unlikely.</i> 
<i>As I don't see any inflammation or lesions, I don't see any reason to prescribe an MRI scan, which could provide a more in-depth view. You know, suffering during your period is normal, and this could explain your pain.</i>
{Heart(1)}
{Age(17)}
    *[You decide to make more endometriosis research]
    ->RechercheEndometriose



=== MedecinUrologue_1 ===
{Heart(3)}
{Age(16)}

{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
You are seen by the urologist and you tell him what brought you to the emergency room a few months ago. 
{Name("Urologist")}
{CharAnimation("Casual1", "TIRED")}
<i>I'm not certain what's wrong with you. In my opinion, it's simply that your periods are painful, which is very common among female patients. I can do an ultrasound scan to make sure everything's fine, but you should see a gynaecologist who can explain to you how periods work.</i>
{CharAnimation("Casual1", "NEUTRAL")}
<i>Well, I can't see anything at all on ultrasound. You should talk to your gynaecologist about it further, but if your pain occurs outside of your period, there's no reason why it should be related to that.</i>
{CharAnimation("Casual1", "ANGRY")}
{Heart(1)}
<i>Personally, I think your pain is psychosomatic. In other words, it's created by your brain. You should de-stress and accept that your periods are painful.</i>
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
You can always make the following choices :
    *{not MedecinGynecologue_1}[Going to the gynaecologist]
    ->MedecinGynecologue_2
    *{not RechercheGeneraliste}[Doing internet research]
    ->RechercheGeneraliste



=== MedecinUrologue_2 ===
{Heart(2)}
{Age(17)}

{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
You are seen by the urologist and you tell him what brought you to the emergency room almost two years ago.
{Name("Urologist")}
{CharAnimation("Casual1", "TIRED")}
<i>I'm not certain what's wrong with you. In my opinion, it's simply that your periods are painful, which is very common among female patients. I can do an ultrasound scan to make sure everything's fine, but I'm sure your gynaecologist already did one and explained to you how periods work.</i>
{CharAnimation("Casual1", "ANGRY")}
<i>Well, I can't see anything at all on ultrasound. You should talk to your gynaecologist about it further, but if your pain occurs outside of your period, there's no reason why it should be related to that.</i>
{CharAnimation("Casual1", "SAD")}
{Heart(1)}
<i>Personally, I think your pain is psychosomatic. In other words, it's created by your brain. You should de-stress and accept that your periods are painful.</i>
{Heart(1)}
{Age(17)}
    *[You decide to make more endometriosis research]
    ->RechercheEndometriose

//RECHERCHES GENERALES


=== RechercheGeneraliste ===
{Name("Emilia")}
{CharAnimation("Casual1", "TIRED")}
When you look for your symptoms, you're not sure what you might have. You could just as easily have endometriosis as ovarian cysts or even cancer. So you decide to take your GP's advice and go and see the second specialist.
    * {not MedecinGynecologue_1} [Going to the gynaecologist]
        ->MedecinGynecologue_2
    * {not MedecinUrologue_1} [Going to the urologist]
        ->MedecinUrologue_2


//RECHERCHES ENDOMETRIOSE


=== RechercheEndometriose ===
{Heart(1)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
When you search for "Endometriosis" followed by "pain ignored by doctors" on an on-line search engine, you come up with the following results: 
* [Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Premier
* [Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Premier
* [Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Premier
* [Women's health is underestimated by doctors]
    ->SiteAssociation_Premier
    


// **************************************** RECHERCHE APRES PREMIER CHOIX :

=== RechercheEndometriose_VulgarisationPremier ===
{Heart(2)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* [Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Deuxieme
* [Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Deuxieme
* [Women's health is underestimated by doctors]
    ->SiteAssociation_Deuxieme

=== RechercheEndometriose_ArticlePremier ===
{Heart(2)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* [Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Deuxieme
* [Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Deuxieme
* [Women's health is underestimated by doctors]
    ->SiteAssociation_Deuxieme

=== RechercheEndometriose_BlogPremier ===
{Heart(2)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* [Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Deuxieme
* [Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Deuxieme
* [Women's health is underestimated by doctors]
    ->SiteAssociation_Deuxieme

=== RechercheEndometriose_AssociationPremier ===
{Heart(2)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* [Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Deuxieme
* [Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Deuxieme
* [Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Deuxieme

    
// **************************************** RECHERCHE APRES DEUXIEME CHOIX :

=== RechercheEndometriose_VulgarisationDeuxieme ===
{Heart(3)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Troisieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Troisieme
* {not (SiteAssociation_Premier || SiteAssociation_Deuxieme || SiteAssociation_Troisieme || SiteAssociation_Quatrieme)}[Women's health is underestimated by doctors]
    ->SiteAssociation_Troisieme    


=== RechercheEndometriose_ArticleDeuxieme ===
{Heart(3)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Troisieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Troisieme
* {not (SiteAssociation_Premier || SiteAssociation_Deuxieme || SiteAssociation_Troisieme || SiteAssociation_Quatrieme)}[Women's health is underestimated by doctors]
    ->SiteAssociation_Troisieme

=== RechercheEndometriose_BlogDeuxieme ===
{Heart(3)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Troisieme
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Troisieme
* {not (SiteAssociation_Premier || SiteAssociation_Deuxieme || SiteAssociation_Troisieme || SiteAssociation_Quatrieme)}[Women's health is underestimated by doctors]
    ->SiteAssociation_Troisieme

=== RechercheEndometriose_AssociationDeuxieme ===
{Heart(3)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Troisieme
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Troisieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Troisieme

// **************************************** RECHERCHE APRES TROISIEME CHOIX :

=== RechercheEndometriose_VulgarisationTroisieme ===
{Heart(4)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Quatrieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Quatrieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->SiteAssociation_Quatrieme
    
=== RechercheEndometriose_ArticleTroisieme ===
{Heart(4)}
{Age(17)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Quatrieme
* [Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Quatrieme
* [Women's health is underestimated by doctors]
    ->SiteAssociation_Quatrieme   
    
=== RechercheEndometriose_BlogTroisieme ===
{Heart(4)}
{Age(17)}
{Name("")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Quatrieme
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Quatrieme
* {not (SiteAssociation_Premier || SiteAssociation_Deuxieme || SiteAssociation_Troisieme || SiteAssociation_Quatrieme)}[Women's health is underestimated by doctors]
    ->SiteAssociation_Quatrieme   

=== RechercheEndometriose_AssociationTroisieme ===
{Heart(4)}
{Age(17)}
{Name("")}
{CharAnimation("Casual1", "NEUTRAL")}
Other research results include: 
* {not (Vulgarisation_Premier || Vulgarisation_Deuxieme || Vulgarisation_Troisieme || Vulgarisation_Quatrieme)}[Endometriosis: My thesis in 180 seconds]
    ->Vulgarisation_Quatrieme
* {not (ArticleDeJournal_Premier || ArticleDeJournal_Deuxieme || ArticleDeJournal_Troisieme || ArticleDeJournal_Quatrieme)}[Women with endometriosis targeted by sects]
    ->ArticleDeJournal_Quatrieme
* {not (ArticledeBlog_Premier || ArticledeBlog_Deuxieme || ArticledeBlog_Troisieme || ArticledeBlog_Quatrieme)}[Blog: Common misconceptions about endometriosis]
    ->ArticledeBlog_Quatrieme

// **************************************** RECHERCHE APRES QUATRIEME CHOIX :
=== RechercheEndometriose_ApresQuatrieme
You are sufficiently informed to go back to your gynaecologist and ask for an MRI scan.
*[Going to the gynaecologist]
        ->MedecinGynecologueDemandeIRM  

// **************************************** ARTICLE VULGARISATION

=== Vulgarisation_Premier ===
{CharAnimation("Casual1", "INTRIGUED")}
You find a Youtube video of "My thesis in 180 seconds" by Oumeima El Mansouri on endometriosis. 
From the very first seconds, you recognized yourself in the pains she described, and you flinched when she spoke of "knifelike pains". You described the same sensation on your first visit to the Urgences. 
In it, she describes a patient who took more than twenty years - and one surgically removed uterus - to discover that she was suffering from endometriosis. 
<i>"Endometriosis is when the endometrial tissue - the part of the uterus that bleeds during periods - migrates and sticks to other organs, continuing to bleed. I'll leave you to imagine the pain."</i>
<i>"Endometriosis is the story of 300 million women around the world, yet it's a taboo disease that's ignored because it's normal for women to feel a lot of pain during 'that time of the month'."</i>
Oumeima El Mansouri goes on to explain that endometriosis is discovered through medical imaging, both MRI and ultrasound, which, although they allow us to "see inside our bodies", do not reveal everything and must be complemented by each other. 
You can therefore realize that endometriosis cannot be diagnosed with "simple" imaging, which gives very detailed images - so much so that they can hide the endometriosis lesions that can be found anywhere in the body, not just in the uterus. 
    * [Return to search results page]
        ->RechercheEndometriose_VulgarisationPremier

=== Vulgarisation_Deuxieme ===
{CharAnimation("Casual1", "INTRIGUED")}
You find a Youtube video of "My thesis in 180 seconds" by Oumeima El Mansouri on endometriosis. 
From the very first seconds, you recognized yourself in the pains she described, and you flinched when she spoke of "knifelike pains". You described the same sensation on your first visit to the Urgences. 
In it, she describes a patient who took more than twenty years - and one surgically removed uterus - to discover that she was suffering from endometriosis. 
<i>"Endometriosis is when the endometrial tissue - the part of the uterus that bleeds during periods - migrates and sticks to other organs, continuing to bleed. I'll leave you to imagine the pain."</i>
<i>"Endometriosis is the story of 300 million women around the world, yet it's a taboo disease that's ignored because it's normal for women to feel a lot of pain during 'that time of the month'."</i>
Oumeima El Mansouri goes on to explain that endometriosis is discovered through medical imaging, both MRI and ultrasound, which, although they allow us to "see inside our bodies", do not reveal everything and must be complemented by each other. 
You can therefore realize that endometriosis cannot be diagnosed with "simple" imaging, which gives very detailed images - so much so that they can hide the endometriosis lesions that can be found anywhere in the body, not just in the uterus. 
    * [Return to search results page]
        ->RechercheEndometriose_VulgarisationDeuxieme

=== Vulgarisation_Troisieme ===
{CharAnimation("Casual1", "INTRIGUED")}
You find a Youtube video of "My thesis in 180 seconds" by Oumeima El Mansouri on endometriosis. 
From the very first seconds, you recognized yourself in the pains she described, and you flinched when she spoke of "knifelike pains". You described the same sensation on your first visit to the Urgences. 
In it, she describes a patient who took more than twenty years - and one surgically removed uterus - to discover that she was suffering from endometriosis. 
<i>"Endometriosis is when the endometrial tissue - the part of the uterus that bleeds during periods - migrates and sticks to other organs, continuing to bleed. I'll leave you to imagine the pain."</i>
<i>"Endometriosis is the story of 300 million women around the world, yet it's a taboo disease that's ignored because it's normal for women to feel a lot of pain during 'that time of the month'."</i>
Oumeima El Mansouri goes on to explain that endometriosis is discovered through medical imaging, both MRI and ultrasound, which, although they allow us to "see inside our bodies", do not reveal everything and must be complemented by each other. 
You can therefore realize that endometriosis cannot be diagnosed with "simple" imaging, which gives very detailed images - so much so that they can hide the endometriosis lesions that can be found anywhere in the body, not just in the uterus. 
    * [Return to search results page]
        ->RechercheEndometriose_VulgarisationTroisieme

=== Vulgarisation_Quatrieme ===
{CharAnimation("Casual1", "INTRIGUED")}
You find a Youtube video of "My thesis in 180 seconds" by Oumeima El Mansouri on endometriosis. 
From the very first seconds, you recognized yourself in the pains she described, and you flinched when she spoke of "knifelike pains". You described the same sensation on your first visit to the Urgences. 
In it, she describes a patient who took more than twenty years - and one surgically removed uterus - to discover that she was suffering from endometriosis. 
<i>"Endometriosis is when the endometrial tissue - the part of the uterus that bleeds during periods - migrates and sticks to other organs, continuing to bleed. I'll leave you to imagine the pain."</i>
<i>"Endometriosis is the story of 300 million women around the world, yet it's a taboo disease that's ignored because it's normal for women to feel a lot of pain during 'that time of the month'."</i>
Oumeima El Mansouri goes on to explain that endometriosis is discovered through medical imaging, both MRI and ultrasound, which, although they allow us to "see inside our bodies", do not reveal everything and must be complemented by each other. 
You can therefore realize that endometriosis cannot be diagnosed with "simple" imaging, which gives very detailed images - so much so that they can hide the endometriosis lesions that can be found anywhere in the body, not just in the uterus. 
->RechercheEndometriose_ApresQuatrieme      

// **************************************** ARTICLE JOURNAL

=== ArticleDeJournal_Premier ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women suffering from endometriosis are now being targeted twice over by sectarian groups says the Interministerial Mission of Vigilance and Combat against Sectarian Aberrations in its latest report".</i>
<i>"Medically, firstly, by charlatans who exploit their distress with ‘miraculous' remedies, and above all, very expensive ones. Then, spiritually, by the 'sacred feminine' and its misuse of feminism for commercial ends".</i>
<i>"The NGO warns of the guilt-tripping mechanisms used by certain gurus or organizations. Statements such as 'if a woman has painful periods, it's because she's not in tune with her deepest nature as a woman' - are also frequently used to attract people in distress or suffering."</i>
<i>"Many patients also report a form of disregard during their diagnostic journey by medical staff, which considerably slows down the time between the first symptoms and the discovery of the disease".</i>
    * [Return to search results page]
        ->RechercheEndometriose_ArticlePremier
        
 === ArticleDeJournal_Deuxieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women suffering from endometriosis are now being targeted twice over by sectarian groups says the Interministerial Mission of Vigilance and Combat against Sectarian Aberrations in its latest report".</i>
<i>"Medically, firstly, by charlatans who exploit their distress with ‘miraculous' remedies, and above all, very expensive ones. Then, spiritually, by the 'sacred feminine' and its misuse of feminism for commercial ends".</i>
<i>"The NGO warns of the guilt-tripping mechanisms used by certain gurus or organizations. Statements such as 'if a woman has painful periods, it's because she's not in tune with her deepest nature as a woman' - are also frequently used to attract people in distress or suffering."</i>
<i>"Many patients also report a form of disregard during their diagnostic journey by medical staff, which considerably slows down the time between the first symptoms and the discovery of the disease".</i>
    * [Return to search results page]
        ->RechercheEndometriose_ArticleDeuxieme      

 === ArticleDeJournal_Troisieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women suffering from endometriosis are now being targeted twice over by sectarian groups says the Interministerial Mission of Vigilance and Combat against Sectarian Aberrations in its latest report".</i>
<i>"Medically, firstly, by charlatans who exploit their distress with ‘miraculous' remedies, and above all, very expensive ones. Then, spiritually, by the 'sacred feminine' and its misuse of feminism for commercial ends".</i>
<i>"The NGO warns of the guilt-tripping mechanisms used by certain gurus or organizations. Statements such as 'if a woman has painful periods, it's because she's not in tune with her deepest nature as a woman' - are also frequently used to attract people in distress or suffering."</i>
<i>"Many patients also report a form of disregard during their diagnostic journey by medical staff, which considerably slows down the time between the first symptoms and the discovery of the disease".</i>
    * [Return to search results page]
        ->RechercheEndometriose_ArticleTroisieme

 === ArticleDeJournal_Quatrieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women suffering from endometriosis are now being targeted twice over by sectarian groups says the Interministerial Mission of Vigilance and Combat against Sectarian Aberrations in its latest report".</i>
<i>"Medically, firstly, by charlatans who exploit their distress with ‘miraculous' remedies, and above all, very expensive ones. Then, spiritually, by the 'sacred feminine' and its misuse of feminism for commercial ends".</i>
<i>"The NGO warns of the guilt-tripping mechanisms used by certain gurus or organizations. Statements such as 'if a woman has painful periods, it's because she's not in tune with her deepest nature as a woman' - are also frequently used to attract people in distress or suffering."</i>
<i>"Many patients also report a form of disregard during their diagnostic journey by medical staff, which considerably slows down the time between the first symptoms and the discovery of the disease".</i>
->RechercheEndometriose_ApresQuatrieme 

// **************************************** ARTICLE BLOG

=== ArticledeBlog_Premier ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Common misconceptions about endometriosis"</i>
<i>" There is still no definitive treatment that can 'cure' endometriosis. There are various therapeutic strategies, such as hormone therapy, surgery and/or complementary medicine, depending on the needs and wishes of each patient, which will help to limit the progression of the disease and the impact on quality of life".</i>
<i>"While it is true that some women experience less pain when they are pregnant and/or after they have given birth, pregnancy is not, and should not be seen as, a therapeutic solution".</i>
<i>"It's not systematic to feel less endometriosis pain when you're pregnant in the first place, it depends on each woman. It's not a treatment. Furthermore, most women who experience pain relief and/or a limitation in the progression of the disease during this period experience the pain and repercussions caused by endometriosis again a few months after their pregnancy."</i>
    * [Return to search results page]
        ->RechercheEndometriose_BlogPremier

=== ArticledeBlog_Deuxieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Common misconceptions about endometriosis"</i>
<i>" There is still no definitive treatment that can 'cure' endometriosis. There are various therapeutic strategies, such as hormone therapy, surgery and/or complementary medicine, depending on the needs and wishes of each patient, which will help to limit the progression of the disease and the impact on quality of life".</i>
<i>"While it is true that some women experience less pain when they are pregnant and/or after they have given birth, pregnancy is not, and should not be seen as, a therapeutic solution".</i>
<i>"It's not systematic to feel less endometriosis pain when you're pregnant in the first place, it depends on each woman. It's not a treatment. Furthermore, most women who experience pain relief and/or a limitation in the progression of the disease during this period experience the pain and repercussions caused by endometriosis again a few months after their pregnancy."</i>
    * [Return to search results page]
        ->RechercheEndometriose_BlogDeuxieme

=== ArticledeBlog_Troisieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Common misconceptions about endometriosis"</i>
<i>" There is still no definitive treatment that can 'cure' endometriosis. There are various therapeutic strategies, such as hormone therapy, surgery and/or complementary medicine, depending on the needs and wishes of each patient, which will help to limit the progression of the disease and the impact on quality of life".</i>
<i>"While it is true that some women experience less pain when they are pregnant and/or after they have given birth, pregnancy is not, and should not be seen as, a therapeutic solution".</i>
<i>"It's not systematic to feel less endometriosis pain when you're pregnant in the first place, it depends on each woman. It's not a treatment. Furthermore, most women who experience pain relief and/or a limitation in the progression of the disease during this period experience the pain and repercussions caused by endometriosis again a few months after their pregnancy."</i>
    * [Return to search results page]
        ->RechercheEndometriose_BlogTroisieme

=== ArticledeBlog_Quatrieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Common misconceptions about endometriosis"</i>
<i>" There is still no definitive treatment that can 'cure' endometriosis. There are various therapeutic strategies, such as hormone therapy, surgery and/or complementary medicine, depending on the needs and wishes of each patient, which will help to limit the progression of the disease and the impact on quality of life".</i>
<i>"While it is true that some women experience less pain when they are pregnant and/or after they have given birth, pregnancy is not, and should not be seen as, a therapeutic solution".</i>
<i>"It's not systematic to feel less endometriosis pain when you're pregnant in the first place, it depends on each woman. It's not a treatment. Furthermore, most women who experience pain relief and/or a limitation in the progression of the disease during this period experience the pain and repercussions caused by endometriosis again a few months after their pregnancy."</i>
->RechercheEndometriose_ApresQuatrieme

// **************************************** ARTICLE ASSOCIATION

=== SiteAssociation_Premier ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women's health problems are underestimated by doctors".</i>
<i>"Women are still considered to be affabulatrices by many practitioners specializing in their health. The result is poor medical care."</i>
<i>"We expect a doctor to listen, to reassure, to explain and sometimes to heal. To relieve, often. To console, always writes the doctor Martin Winckler."</i>
<i>"This is often due to the fact that they are suspected of making things up, exaggerating, being emotional, irrational, ignorant or hysterical. These prejudices are unsurprisingly detrimental to good medical care."</i>
    * [Return to search results page]
        ->RechercheEndometriose_AssociationPremier

=== SiteAssociation_Deuxieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women's health problems are underestimated by doctors".</i>
<i>"Women are still considered to be affabulatrices by many practitioners specializing in their health. The result is poor medical care."</i>
<i>"We expect a doctor to listen, to reassure, to explain and sometimes to heal. To relieve, often. To console, always, writes the doctor Martin Winckler."</i>
<i>"This is often due to the fact that they are suspected of making things up, exaggerating, being emotional, irrational, ignorant or hysterical. These prejudices are unsurprisingly detrimental to good medical care."</i>
    * [Return to search results page]
        ->RechercheEndometriose_AssociationDeuxieme        

=== SiteAssociation_Troisieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women's health problems are underestimated by doctors".</i>
<i>"Women are still considered to be affabulatrices by many practitioners specializing in their health. The result is poor medical care."</i>
<i>"We expect a doctor to listen, to reassure, to explain and sometimes to heal. To relieve, often. To console, always, writes the doctor Martin Winckler."</i>
<i>"This is often due to the fact that they are suspected of making things up, exaggerating, being emotional, irrational, ignorant or hysterical. These prejudices are unsurprisingly detrimental to good medical care."</i>
    * [Return to search results page]
        ->RechercheEndometriose_AssociationTroisieme

=== SiteAssociation_Quatrieme ===
{CharAnimation("Casual1", "INTRIGUED")}
<i>"Women's health problems are underestimated by doctors".</i>
<i>"Women are still considered to be affabulatrices by many practitioners specializing in their health. The result is poor medical care."</i>
<i>"We expect a doctor to listen, to reassure, to explain and sometimes to heal. To relieve, often. To console, always, writes the doctor Martin Winckler."</i>
<i>"This is often due to the fact that they are suspected of making things up, exaggerating, being emotional, irrational, ignorant or hysterical. These prejudices are unsurprisingly detrimental to good medical care."</i>
->RechercheEndometriose_ApresQuatrieme

// ****************************************


//Retour chez les médecins




=== MedecinGynecologueDemandeIRM === 
{Heart(4)}
{Age(18)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
You go to see your gynaecologist, determined this time to insist on an MRI as well as an ultrasound scan to be sure about the possibility of endometriosis. 
{Name("Gynaecologist")}
{CharAnimation("Casual1", "TIRED")}
{Heart(4)}
<i>No, if you had endometriosis we should be able to see something with the ultrasound. But, if you insist, you can indeed go for an MRI... You'll see for yourself. You'll have to wait a while for an appointment. And yes, many of my patients have pain during their periods, which is perfectly normal.</i>
{Name("Emilia")}
{CharAnimation("Casual1", "RELIVED")}
Once you have finished seeing your gynaecologist, you are given a prescription to go to a medical imaging clinic for an MRI scan. 
    *[Going to the medical imaging clinic]
        -> CentredeRadiologie


=== CentredeRadiologie ===
{Age(19)}
{Heart(4)}
{Name("Emilia")}
{CharAnimation("Casual1", "NEUTRAL")}
After your MRI scan, you are seen by a doctor who tells you that your MRI scan does indeed show lesions due to endometriosis.
{Name("Emilia")}
{CharAnimation("Casual1", "RELIVED")}
{Heart(5)}
If there's no cure for your illness at the moment, you'll be relieved to know that it wasn't all due to stress or that you didn't imagine these unbearable pains. 
Between your visit to emergency and your diagnosis, more than four years passed without you knowing what was happening to you. 

{Name("The End")}
{CharAnimation("Casual1", "NEUTRAL")} 
It is estimated that around 10% of the world's female population is affected by endometriosis, a chronic disease that can present severely disabling symptoms. This figure is considered to be an underestimate, as the process of diagnosing endometriosis is extremely complex and is estimated to take an average of 5 to 7 years, or even 10 years. 
Not only can the pain associated with endometriosis be seriously disabling, but the fact that doctors fail to take it into account can have a major onslaught on patients' mental health. 
One of the main reasons for this is a lack of knowledge on the part of healthcare staff as a whole. Numerous testimonies from diagnosed patients report a form of disregard on the part of the latter, who often simply consider that painful menstruation is normal, regardless of the level of pain and disability caused.
-> END