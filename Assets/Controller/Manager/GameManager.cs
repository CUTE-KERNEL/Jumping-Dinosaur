﻿using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance = null;

    void Awake()
    {
        if (Instance == null)
            Instance = this;

        else if (Instance != this)
            Destroy(gameObject);

        DontDestroyOnLoad(gameObject);

        InitGame();
    }

    void InitGame()
    {

    }

    void Update()
    {

    }
}