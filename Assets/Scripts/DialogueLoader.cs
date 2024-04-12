using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class DialogueLoader : MonoBehaviour
{
    public static string generalDialogueFolder;

    [Header("Dialogue Folder Name")]
    [SerializeField] private string folderName;

    [Header("Ink JSON File Defaults")]
    [SerializeField] private TextAsset[] inkJsonFiles;

    // Start is called before the first frame update
    void Start()
    {
        generalDialogueFolder = folderName;
        string directoryPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + @"\" + folderName;

        if (!Directory.Exists(directoryPath)) Directory.CreateDirectory(directoryPath);

        foreach (TextAsset file in inkJsonFiles)
        {
            if (file is null || File.Exists(directoryPath + @"\" + file.name + ".json")) continue;

            StreamWriter writer = new StreamWriter(directoryPath + @"\" + file.name + ".json");
            writer.Write(file.text);
            writer.Dispose();
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
