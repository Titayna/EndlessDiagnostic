using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharAnim : MonoBehaviour
{
    public Animator CharAnimController;

    private void Start () 
    {
        CharAnimController = GetComponent<Animator>();
    }
    
    public void CharacterMotion(string animationName) 
    {
        CharAnimController.SetTrigger(animationName);
    }
}
