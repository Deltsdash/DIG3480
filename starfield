using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Starfield : MonoBehaviour
{
    private ParticleSystem ps;
    private float hSliderValue = 1.0F;
    private Done_GameController gameController;

    void Start()
    {
        gameController = GameObject.FindGameObjectWithTag("GameController").GetComponent<Done_GameController>();
        if (gameController != null)
        {
            gameController = gameController.GetComponent<Done_GameController>();
        }
        if (gameController == null)
        {
            Debug.Log("Cannot find 'GameController' script");
        }
        ps = GetComponent<ParticleSystem>();
    }

    void Update()
    {
        var main = ps.main;
        main.simulationSpeed = hSliderValue;

        if (gameController.score >= 100)
        {
            if (hSliderValue <= 10)
            {
                hSliderValue += Time.deltaTime;
            }
        }
    }
}
