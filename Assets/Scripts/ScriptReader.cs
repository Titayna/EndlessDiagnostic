using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

public class ScriptReader : MonoBehaviour
{
    [SerializeField]
    private TextAsset _InkJsonFile; 
    private Story _StoryScript;

    public TMP_Text dialogueBox;
    public TMP_Text nameTag;

    public Image characterIcon;

    [SerializeField]
    private GridLayoutGroup choiceHolder;

    [SerializeField]
    private Button choiceBasePrefab;




    void Start() 
    {
        LoadStory();

        Debug.Log(getNextStoryBlock()); 

          foreach (Choice choice in _StoryScript.currentChoices)
        {
            Debug.Log("The index is " + choice.index + " and its text is '" + choice.text + "'");           
        }

    }



    string getNextStoryBlock()
    {
        string text = "";

        if(_StoryScript.canContinue)
        {
            text = _StoryScript.Continue();
        }

        return text;
    }



    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)) //Appuyer sur la barre d'espace pour faire avancer les dialogues
        {
            DisplayNextLine();
        }
    }




    void LoadStory() // Lier au fichier Inkle
    {
        _StoryScript = new Story(_InkJsonFile.text);

        _StoryScript.BindExternalFunction("Name", (string charName) => ChangeName(charName));
        _StoryScript.BindExternalFunction("CharacterIcon", (string charName) => ChangeCharacterIcon(charName));
        _StoryScript.BindExternalFunction("CharAnimation", (string charName, string amimName) => playCharacterAnim(charName, amimName));

        DisplayNextLine();

        
    }




    public void DisplayNextLine() // Afficher les lignes une à une
    {
        if (_StoryScript.canContinue)
        {
            string text = _StoryScript.Continue(); 
            text = text?.Trim(); 
            dialogueBox.text = text; 
        }
        else if (_StoryScript.currentChoices.Count > 0)
        {
            DisplayChoices();
        }
        else 
        {
            dialogueBox.text = "Fin de l'histoire."; // Dernière phrase !! A CHANGER 
        }
    }




    private void DisplayChoices() // Checker s'il y a un choix // OK 
    {
        if (choiceHolder.GetComponentsInChildren<Button>().Length > 0) return; 

        for (int i = 0; i<_StoryScript.currentChoices.Count; i++)
        { 
            var choice = _StoryScript.currentChoices[i];
            var button = CreateChoiceButton(choice.text); 

            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }
    }




    Button CreateChoiceButton(string text) // Créer un bouton choix // OK 
    {

        //var choiceButton = Instantiate(choiceBasePrefab);
        Button choiceButton = Instantiate(choiceBasePrefab) as Button;
        choiceButton.transform.SetParent(choiceHolder.transform, false); 

        //var buttonText = choiceButton.GetComponentInChildren<TMP_Text>();
        TMP_Text buttonText = choiceButton.GetComponentInChildren<TMP_Text>();
        buttonText.text = text;

        return choiceButton; 

    }




    void OnClickChoiceButton(Choice choice) // Continuer l'histoire selon le choix // OK 
    {
        _StoryScript.ChooseChoiceIndex(choice.index); 
        RefreshChoiceView(); 
        DisplayNextLine();

    }



    void RefreshChoiceView() // Supprimer le bouton si l'histoire continue sans // OK 
    {

        if (choiceHolder != null) 
        {
           foreach (var button in choiceHolder.GetComponentsInChildren<Button>()) 
           {
                Destroy(button.gameObject);
           }
        }

    }




    public void ChangeName(string name) // Changer le nom des charactères qui parlent 
    {
        string SpeakerName = name;

        nameTag.text = SpeakerName;
    }




    public void ChangeCharacterIcon(string charName) // Changer l'icone des charactères 
    {
        var characterIconSprite = Resources.Load("CharacterIcons/" + charName) as Sprite;
        characterIcon.sprite = Resources.Load<Sprite>("CharacterIcons/" + charName);
    }

    
    



    public void playCharacterAnim (string charName, string animName) // Ajouter des expressions au joueur
    {
        GameObject character = GameObject.Find(charName);

        Debug.Log("Changing " + character.name + "'s Animation to " + animName);

        character.GetComponent<CharAnim>().CharacterMotion(animName);
    }

}