# CreditsScreen
A simple credits screen for Godot projects.


## Instructions
1. clone or download this repo
2. copy the repo folder into your main project folder
3. open the "CreditsScreen" scene and set the "Credits Text" poperty of the
"CreditsScreen" node to a list of the people who worked on your project. Example:

```
Executive Producer
PersonA

Producer
PersonB

Programming
PersonC
PersonD
PersonE

Artwork
PersonF
PersonG
PersonH

Audio
PersonI
PersonJ
PersonK
```

4. adjust the "Credits Speed" property of the "CreditsScreen" node if you like. The
default should be sufficient for most projects
5. to display the credits screen, simply instance it to your main project
6. to close the credits screen, simply free it with "queue_free"
